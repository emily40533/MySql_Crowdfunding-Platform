中央大學1122資料庫管理 – 期末專案 – 柯士文教授

教授提供規格書及專案背景說明，我們依需求設計ER-Model, Tables & Stored Procedures
Stored Procedures
[1] sp_RegisterMember (10%)：會員註冊
[2] sp_UpdatePwd (10%)：更改會員密碼
[3] sp_Login (10%)：登入會員
[4] sp_CreateProposalOption (10%)：創建提案的贊助選項
[5] sp_GetFollowedProposalsByMember (10%)：取得會員(member_id) 有追蹤的提案
[6] sp_UpdateProposalStatus (10%)：更改提案狀態
[7] sp_GetUnrepliedReviews (10%)：搜尋 member_id 擁有的所有提案中尚未被回覆的評論
[8] sp_GetProposalByCompletionRate (10%)：1.列出達標比例 (該提案已募得金額除以目標金額之比例,amount_raised/goal) 大於等於 ratio 以上的所有提案，並且按ratio欄位由高至低排序
[9] sp_GetOngoingProposalOptionbyRating (10%)：找出proposal option評級平均分數大於等於rating，欄位由高至低排序
[10] sp_CreateSponsorRecord (10%)：建立提案贊助選項的購買紀錄
[11] sp_GetRecommendedProposals (10%)：推薦提案給 member_id 這位會員。
  推薦內容的篩選標準包含下列三項：
  a.和 member_id 贊助相同提案的人也贊助過的其他提案
  b.提案狀態必須是 Ongoing
  c.推薦內容不可以是自己的提案
  如果是從來沒有贊助過任何提案的會員，或是贊助過提案但不符合 a. b. c. 條件，則輸出推薦點閱率 (view_num) 最多的前五項提案並請按照  view_num 由高到低排列。
[12] sp_DeleteMember (10%)：將 member 從資料庫移除
