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
-- Module      : Network.AWS.Budgets.DeleteBudgetAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a budget action.
module Network.AWS.Budgets.DeleteBudgetAction
  ( -- * Creating a Request
    deleteBudgetAction,
    DeleteBudgetAction,

    -- * Request Lenses
    dAccountId,
    dBudgetName,
    dActionId,

    -- * Destructuring the Response
    deleteBudgetActionResponse,
    DeleteBudgetActionResponse,

    -- * Response Lenses
    dbarrsResponseStatus,
    dbarrsAccountId,
    dbarrsBudgetName,
    dbarrsAction,
  )
where

import Network.AWS.Budgets.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteBudgetAction' smart constructor.
data DeleteBudgetAction = DeleteBudgetAction'
  { _dAccountId ::
      !Text,
    _dBudgetName :: !Text,
    _dActionId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBudgetAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAccountId' - Undocumented member.
--
-- * 'dBudgetName' - Undocumented member.
--
-- * 'dActionId' - A system-generated universally unique identifier (UUID) for the action.
deleteBudgetAction ::
  -- | 'dAccountId'
  Text ->
  -- | 'dBudgetName'
  Text ->
  -- | 'dActionId'
  Text ->
  DeleteBudgetAction
deleteBudgetAction
  pAccountId_
  pBudgetName_
  pActionId_ =
    DeleteBudgetAction'
      { _dAccountId = pAccountId_,
        _dBudgetName = pBudgetName_,
        _dActionId = pActionId_
      }

-- | Undocumented member.
dAccountId :: Lens' DeleteBudgetAction Text
dAccountId = lens _dAccountId (\s a -> s {_dAccountId = a})

-- | Undocumented member.
dBudgetName :: Lens' DeleteBudgetAction Text
dBudgetName = lens _dBudgetName (\s a -> s {_dBudgetName = a})

-- | A system-generated universally unique identifier (UUID) for the action.
dActionId :: Lens' DeleteBudgetAction Text
dActionId = lens _dActionId (\s a -> s {_dActionId = a})

instance AWSRequest DeleteBudgetAction where
  type
    Rs DeleteBudgetAction =
      DeleteBudgetActionResponse
  request = postJSON budgets
  response =
    receiveJSON
      ( \s h x ->
          DeleteBudgetActionResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "AccountId")
            <*> (x .:> "BudgetName")
            <*> (x .:> "Action")
      )

instance Hashable DeleteBudgetAction

instance NFData DeleteBudgetAction

instance ToHeaders DeleteBudgetAction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSBudgetServiceGateway.DeleteBudgetAction" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteBudgetAction where
  toJSON DeleteBudgetAction' {..} =
    object
      ( catMaybes
          [ Just ("AccountId" .= _dAccountId),
            Just ("BudgetName" .= _dBudgetName),
            Just ("ActionId" .= _dActionId)
          ]
      )

instance ToPath DeleteBudgetAction where
  toPath = const "/"

instance ToQuery DeleteBudgetAction where
  toQuery = const mempty

-- | /See:/ 'deleteBudgetActionResponse' smart constructor.
data DeleteBudgetActionResponse = DeleteBudgetActionResponse'
  { _dbarrsResponseStatus ::
      !Int,
    _dbarrsAccountId ::
      !Text,
    _dbarrsBudgetName ::
      !Text,
    _dbarrsAction ::
      !Action
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBudgetActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbarrsResponseStatus' - -- | The response status code.
--
-- * 'dbarrsAccountId' - Undocumented member.
--
-- * 'dbarrsBudgetName' - Undocumented member.
--
-- * 'dbarrsAction' - Undocumented member.
deleteBudgetActionResponse ::
  -- | 'dbarrsResponseStatus'
  Int ->
  -- | 'dbarrsAccountId'
  Text ->
  -- | 'dbarrsBudgetName'
  Text ->
  -- | 'dbarrsAction'
  Action ->
  DeleteBudgetActionResponse
deleteBudgetActionResponse
  pResponseStatus_
  pAccountId_
  pBudgetName_
  pAction_ =
    DeleteBudgetActionResponse'
      { _dbarrsResponseStatus =
          pResponseStatus_,
        _dbarrsAccountId = pAccountId_,
        _dbarrsBudgetName = pBudgetName_,
        _dbarrsAction = pAction_
      }

-- | -- | The response status code.
dbarrsResponseStatus :: Lens' DeleteBudgetActionResponse Int
dbarrsResponseStatus = lens _dbarrsResponseStatus (\s a -> s {_dbarrsResponseStatus = a})

-- | Undocumented member.
dbarrsAccountId :: Lens' DeleteBudgetActionResponse Text
dbarrsAccountId = lens _dbarrsAccountId (\s a -> s {_dbarrsAccountId = a})

-- | Undocumented member.
dbarrsBudgetName :: Lens' DeleteBudgetActionResponse Text
dbarrsBudgetName = lens _dbarrsBudgetName (\s a -> s {_dbarrsBudgetName = a})

-- | Undocumented member.
dbarrsAction :: Lens' DeleteBudgetActionResponse Action
dbarrsAction = lens _dbarrsAction (\s a -> s {_dbarrsAction = a})

instance NFData DeleteBudgetActionResponse
