{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.UpdateBudgetAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a budget action.
module Network.AWS.Budgets.UpdateBudgetAction
  ( -- * Creating a Request
    updateBudgetAction,
    UpdateBudgetAction,

    -- * Request Lenses
    ubaSubscribers,
    ubaExecutionRoleARN,
    ubaApprovalModel,
    ubaNotificationType,
    ubaActionThreshold,
    ubaDefinition,
    ubaAccountId,
    ubaBudgetName,
    ubaActionId,

    -- * Destructuring the Response
    updateBudgetActionResponse,
    UpdateBudgetActionResponse,

    -- * Response Lenses
    ubarrsResponseStatus,
    ubarrsAccountId,
    ubarrsBudgetName,
    ubarrsOldAction,
    ubarrsNewAction,
  )
where

import Network.AWS.Budgets.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateBudgetAction' smart constructor.
data UpdateBudgetAction = UpdateBudgetAction'
  { _ubaSubscribers ::
      !(Maybe (List1 Subscriber)),
    _ubaExecutionRoleARN ::
      !(Maybe Text),
    _ubaApprovalModel ::
      !(Maybe ApprovalModel),
    _ubaNotificationType ::
      !(Maybe NotificationType),
    _ubaActionThreshold ::
      !(Maybe ActionThreshold),
    _ubaDefinition ::
      !(Maybe Definition),
    _ubaAccountId :: !Text,
    _ubaBudgetName :: !Text,
    _ubaActionId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateBudgetAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubaSubscribers' - Undocumented member.
--
-- * 'ubaExecutionRoleARN' - The role passed for action execution and reversion. Roles and actions must be in the same account.
--
-- * 'ubaApprovalModel' - This specifies if the action needs manual or automatic approval.
--
-- * 'ubaNotificationType' - Undocumented member.
--
-- * 'ubaActionThreshold' - Undocumented member.
--
-- * 'ubaDefinition' - Undocumented member.
--
-- * 'ubaAccountId' - Undocumented member.
--
-- * 'ubaBudgetName' - Undocumented member.
--
-- * 'ubaActionId' - A system-generated universally unique identifier (UUID) for the action.
updateBudgetAction ::
  -- | 'ubaAccountId'
  Text ->
  -- | 'ubaBudgetName'
  Text ->
  -- | 'ubaActionId'
  Text ->
  UpdateBudgetAction
updateBudgetAction
  pAccountId_
  pBudgetName_
  pActionId_ =
    UpdateBudgetAction'
      { _ubaSubscribers = Nothing,
        _ubaExecutionRoleARN = Nothing,
        _ubaApprovalModel = Nothing,
        _ubaNotificationType = Nothing,
        _ubaActionThreshold = Nothing,
        _ubaDefinition = Nothing,
        _ubaAccountId = pAccountId_,
        _ubaBudgetName = pBudgetName_,
        _ubaActionId = pActionId_
      }

-- | Undocumented member.
ubaSubscribers :: Lens' UpdateBudgetAction (Maybe (NonEmpty Subscriber))
ubaSubscribers = lens _ubaSubscribers (\s a -> s {_ubaSubscribers = a}) . mapping _List1

-- | The role passed for action execution and reversion. Roles and actions must be in the same account.
ubaExecutionRoleARN :: Lens' UpdateBudgetAction (Maybe Text)
ubaExecutionRoleARN = lens _ubaExecutionRoleARN (\s a -> s {_ubaExecutionRoleARN = a})

-- | This specifies if the action needs manual or automatic approval.
ubaApprovalModel :: Lens' UpdateBudgetAction (Maybe ApprovalModel)
ubaApprovalModel = lens _ubaApprovalModel (\s a -> s {_ubaApprovalModel = a})

-- | Undocumented member.
ubaNotificationType :: Lens' UpdateBudgetAction (Maybe NotificationType)
ubaNotificationType = lens _ubaNotificationType (\s a -> s {_ubaNotificationType = a})

-- | Undocumented member.
ubaActionThreshold :: Lens' UpdateBudgetAction (Maybe ActionThreshold)
ubaActionThreshold = lens _ubaActionThreshold (\s a -> s {_ubaActionThreshold = a})

-- | Undocumented member.
ubaDefinition :: Lens' UpdateBudgetAction (Maybe Definition)
ubaDefinition = lens _ubaDefinition (\s a -> s {_ubaDefinition = a})

-- | Undocumented member.
ubaAccountId :: Lens' UpdateBudgetAction Text
ubaAccountId = lens _ubaAccountId (\s a -> s {_ubaAccountId = a})

-- | Undocumented member.
ubaBudgetName :: Lens' UpdateBudgetAction Text
ubaBudgetName = lens _ubaBudgetName (\s a -> s {_ubaBudgetName = a})

-- | A system-generated universally unique identifier (UUID) for the action.
ubaActionId :: Lens' UpdateBudgetAction Text
ubaActionId = lens _ubaActionId (\s a -> s {_ubaActionId = a})

instance AWSRequest UpdateBudgetAction where
  type
    Rs UpdateBudgetAction =
      UpdateBudgetActionResponse
  request = postJSON budgets
  response =
    receiveJSON
      ( \s h x ->
          UpdateBudgetActionResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "AccountId")
            <*> (x .:> "BudgetName")
            <*> (x .:> "OldAction")
            <*> (x .:> "NewAction")
      )

instance Hashable UpdateBudgetAction

instance NFData UpdateBudgetAction

instance ToHeaders UpdateBudgetAction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSBudgetServiceGateway.UpdateBudgetAction" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateBudgetAction where
  toJSON UpdateBudgetAction' {..} =
    object
      ( catMaybes
          [ ("Subscribers" .=) <$> _ubaSubscribers,
            ("ExecutionRoleArn" .=) <$> _ubaExecutionRoleARN,
            ("ApprovalModel" .=) <$> _ubaApprovalModel,
            ("NotificationType" .=) <$> _ubaNotificationType,
            ("ActionThreshold" .=) <$> _ubaActionThreshold,
            ("Definition" .=) <$> _ubaDefinition,
            Just ("AccountId" .= _ubaAccountId),
            Just ("BudgetName" .= _ubaBudgetName),
            Just ("ActionId" .= _ubaActionId)
          ]
      )

instance ToPath UpdateBudgetAction where
  toPath = const "/"

instance ToQuery UpdateBudgetAction where
  toQuery = const mempty

-- | /See:/ 'updateBudgetActionResponse' smart constructor.
data UpdateBudgetActionResponse = UpdateBudgetActionResponse'
  { _ubarrsResponseStatus ::
      !Int,
    _ubarrsAccountId ::
      !Text,
    _ubarrsBudgetName ::
      !Text,
    _ubarrsOldAction ::
      !Action,
    _ubarrsNewAction ::
      !Action
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateBudgetActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubarrsResponseStatus' - -- | The response status code.
--
-- * 'ubarrsAccountId' - Undocumented member.
--
-- * 'ubarrsBudgetName' - Undocumented member.
--
-- * 'ubarrsOldAction' - The previous action resource information.
--
-- * 'ubarrsNewAction' - The updated action resource information.
updateBudgetActionResponse ::
  -- | 'ubarrsResponseStatus'
  Int ->
  -- | 'ubarrsAccountId'
  Text ->
  -- | 'ubarrsBudgetName'
  Text ->
  -- | 'ubarrsOldAction'
  Action ->
  -- | 'ubarrsNewAction'
  Action ->
  UpdateBudgetActionResponse
updateBudgetActionResponse
  pResponseStatus_
  pAccountId_
  pBudgetName_
  pOldAction_
  pNewAction_ =
    UpdateBudgetActionResponse'
      { _ubarrsResponseStatus =
          pResponseStatus_,
        _ubarrsAccountId = pAccountId_,
        _ubarrsBudgetName = pBudgetName_,
        _ubarrsOldAction = pOldAction_,
        _ubarrsNewAction = pNewAction_
      }

-- | -- | The response status code.
ubarrsResponseStatus :: Lens' UpdateBudgetActionResponse Int
ubarrsResponseStatus = lens _ubarrsResponseStatus (\s a -> s {_ubarrsResponseStatus = a})

-- | Undocumented member.
ubarrsAccountId :: Lens' UpdateBudgetActionResponse Text
ubarrsAccountId = lens _ubarrsAccountId (\s a -> s {_ubarrsAccountId = a})

-- | Undocumented member.
ubarrsBudgetName :: Lens' UpdateBudgetActionResponse Text
ubarrsBudgetName = lens _ubarrsBudgetName (\s a -> s {_ubarrsBudgetName = a})

-- | The previous action resource information.
ubarrsOldAction :: Lens' UpdateBudgetActionResponse Action
ubarrsOldAction = lens _ubarrsOldAction (\s a -> s {_ubarrsOldAction = a})

-- | The updated action resource information.
ubarrsNewAction :: Lens' UpdateBudgetActionResponse Action
ubarrsNewAction = lens _ubarrsNewAction (\s a -> s {_ubarrsNewAction = a})

instance NFData UpdateBudgetActionResponse
