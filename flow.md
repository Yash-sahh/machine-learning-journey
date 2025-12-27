graph TD
    %% --- Define Styles ---
    classDef client fill:#e3f2fd,stroke:#1565c0,stroke-width:2px,color:#0d47a1;
    classDef firebaseAuth fill:#fff3e0,stroke:#e65100,stroke-width:2px,color:#bf360c;
    classDef firestore fill:#fbe9e7,stroke:#d84315,stroke-width:2px,color:#bf360c;
    classDef cloudFunc fill:#ede7f6,stroke:#512da8,stroke-width:2px,color:#311b92;
    classDef admin fill:#efebe9,stroke:#4e342e,stroke-width:2px,color:#3e2723;
    classDef note fill:#fff9c4,stroke:#fbc02d,stroke-dasharray: 5 5;

    subgraph "📱 Frontend Client App (Student)"
        A[Start Application]
        B{LoggedIn?}
        C[Login View: Google Sign-In Btn]
        D[Dashboard Container]
        
        subgraph "👤 Profile Frame View"
            D1[Display Personal Info, Badges, Reputation]
            D2[Action: Edit Profile]
        end
        
        subgraph "🧑‍🤝‍🧑 Community Frame View"
            D3[Tab: My Communities Feed]
            D4[Tab: Explore & Join]
            D5[Action: Request New Community]
            D6[Tab: Global General Lounge]
        end
        
        subgraph "📅 Task Frame View"
            D7[Display Task Cards sorted by Urgency/Date]
            D8[Action: Create Personal Task]
        end
    end

    subgraph "🔥 Firebase Backend Services"
        
        subgraph "🔐 Authentication"
            FA1(Firebase Auth & Google Identity Provider)
            FA2{Verify College Email Domain?}
        end

        subgraph "🛡️ Security Layer"
            FSR{{Firestore Security Rules}}
        end

        subgraph "🗄️ Cloud Firestore (NoSQL Database)"
            DB_Users[(Coll: Users)]
            DB_Comm[(Coll: Communities)]
            DB_Posts[(SubColl: Posts/Events)]
            DB_Tasks[(SubColl: User/Tasks)]
            DB_Requests[(Coll: AdminRequests)]
            DB_Global[(Coll: GlobalChat)]
        end

        subgraph "⚙️ Cloud Functions (Automation)"
            CF_OnEvent[Fn: onEventPostCreate]
            CF_OnApprove[Fn: onCommunityApprove]
            CF_Scheduled[Fn: Scheduled Urgency Recalc]
        end
    end

    subgraph "👮‍♂️ Admin / Authority"
        AdminUser[Admin Dashboard / Interface]
    end

    %% --- Main Login Flow ---
    A --> B
    B -- No --> C
    C -- 1. Credentials --> FA1
    FA1 --> FA2
    FA2 -- Invalid --> C
    FA2 -- Validated --> D
    B -- Yes (Cached Token) --> D
    D -- Fetch Initial Data --> FSR

    %% --- Data Access Flow (Read) ---
    FSR -- Read Allowed --> DB_Users
    FSR -- Read Allowed --> DB_Comm
    FSR -- Read Allowed --> DB_Tasks
    DB_Users -.-> D1
    DB_Comm -.-> D3
    DB_Tasks -.-> D7
    DB_Global -.-> D6

    %% --- Profile Flow ---
    D2 -- Update Data --> FSR
    FSR -- Write Allowed --> DB_Users

    %% --- Community Interactions Flow ---
    D4 -- Join with Skill Level --> FSR
    FSR -- Update User Doc --> DB_Users
    D6 -- Send Chat/Poll --> FSR
    FSR -- Write --> DB_Global

    %% --- Community Creation Workflow ---
    D5 -- 1. Submit Request Form --> FSR
    FSR -- Write Request --> DB_Requests
    DB_Requests -.-> AdminUser
    AdminUser -- 2. Approve Request --> DB_Requests
    DB_Requests -- 3. Trigger (onUpdate) --> CF_OnApprove
    CF_OnApprove -- 4. Create New Community Doc --> DB_Comm
    CF_OnApprove -- 5. Promote Requester to Admin --> DB_Users

    %% --- Task Automation Flow (The Core Feature) ---
    D3 -- 1. Post "Event" type --> FSR
    FSR -- Write to Subcollection --> DB_Posts
    DB_Posts -- 2. Trigger (onCreate) --> CF_OnEvent
    CF_OnEvent -- 3. Extract details & create Task Doc --> DB_Tasks
    DB_Tasks -- 4. Real-time Listener Update --> D7

    %% --- Personal Task Flow ---
    D8 -- Create Manual Task --> FSR
    FSR -- Write --> DB_Tasks

    %% --- Scheduled Maintenance Flow ---
    CF_Scheduled -- Periodic Trigger (e.g., hourly) --> DB_Tasks
    CF_Scheduled -- Recalculate Urgency/Color & Update --> DB_Tasks
    DB_Tasks -.-> D7

    %% --- Styling Mapping ---
    class A,B,C,D,D1,D2,D3,D4,D5,D6,D7,D8 client;
    class FA1,FA2 firebaseAuth;
    class DB_Users,DB_Comm,DB_Posts,DB_Tasks,DB_Requests,DB_Global firestore;
    class CF_OnEvent,CF_OnApprove,CF_Scheduled cloudFunc;
    class AdminUser admin;
    class FSR,note note;