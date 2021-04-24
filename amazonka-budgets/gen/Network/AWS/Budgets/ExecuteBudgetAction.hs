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
-- Module      : Network.AWS.Budgets.ExecuteBudgetAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes a budget action.
module Network.AWS.Budgets.ExecuteBudgetAction
  ( -- * Creating a Request
    executeBudgetAction,
    ExecuteBudgetAction,

    -- * Request Lenses
    ebaAccountId,
    ebaBudgetName,
    ebaActionId,
    ebaExecutionType,

    -- * Destructuring the Response
    executeBudgetActionResponse,
    ExecuteBudgetActionResponse,

    -- * Response Lenses
    ebarrsResponseStatus,
    ebarrsAccountId,
    ebarrsBudgetName,
    ebarrsActionId,
    ebarrsExecutionType,
  )
where

import Network.AWS.Budgets.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'executeBudgetAction' smart constructor.
data ExecuteBudgetAction = ExecuteBudgetAction'
  { _ebaAccountId ::
      !Text,
    _ebaBudgetName :: !Text,
    _ebaActionId :: !Text,
    _ebaExecutionType ::
      !ExecutionType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExecuteBudgetAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebaAccountId' - Undocumented member.
--
-- * 'ebaBudgetName' - Undocumented member.
--
-- * 'ebaActionId' - A system-generated universally unique identifier (UUID) for the action.
--
-- * 'ebaExecutionType' - The type of execution.
executeBudgetAction ::
  -- | 'ebaAccountId'
  Text ->
  -- | 'ebaBudgetName'
  Text ->
  -- | 'ebaActionId'
  Text ->
  -- | 'ebaExecutionType'
  ExecutionType ->
  ExecuteBudgetAction
executeBudgetAction
  pAccountId_
  pBudgetName_
  pActionId_
  pExecutionType_ =
    ExecuteBudgetAction'
      { _ebaAccountId = pAccountId_,
        _ebaBudgetName = pBudgetName_,
        _ebaActionId = pActionId_,
        _ebaExecutionType = pExecutionType_
      }

-- | Undocumented member.
ebaAccountId :: Lens' ExecuteBudgetAction Text
ebaAccountId = lens _ebaAccountId (\s a -> s {_ebaAccountId = a})

-- | Undocumented member.
ebaBudgetName :: Lens' ExecuteBudgetAction Text
ebaBudgetName = lens _ebaBudgetName (\s a -> s {_ebaBudgetName = a})

-- | A system-generated universally unique identifier (UUID) for the action.
ebaActionId :: Lens' ExecuteBudgetAction Text
ebaActionId = lens _ebaActionId (\s a -> s {_ebaActionId = a})

-- | The type of execution.
ebaExecutionType :: Lens' ExecuteBudgetAction ExecutionType
ebaExecutionType = lens _ebaExecutionType (\s a -> s {_ebaExecutionType = a})

instance AWSRequest ExecuteBudgetAction where
  type
    Rs ExecuteBudgetAction =
      ExecuteBudgetActionResponse
  request = postJSON budgets
  response =
    receiveJSON
      ( \s h x ->
          ExecuteBudgetActionResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "AccountId")
            <*> (x .:> "BudgetName")
            <*> (x .:> "ActionId")
            <*> (x .:> "ExecutionType")
      )

instance Hashable ExecuteBudgetAction

instance NFData ExecuteBudgetAction

instance ToHeaders ExecuteBudgetAction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSBudgetServiceGateway.ExecuteBudgetAction" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ExecuteBudgetAction where
  toJSON ExecuteBudgetAction' {..} =
    object
      ( catMaybes
          [ Just ("AccountId" .= _ebaAccountId),
            Just ("BudgetName" .= _ebaBudgetName),
            Just ("ActionId" .= _ebaActionId),
            Just ("ExecutionType" .= _ebaExecutionType)
          ]
      )

instance ToPath ExecuteBudgetAction where
  toPath = const "/"

instance ToQuery ExecuteBudgetAction where
  toQuery = const mempty

-- | /See:/ 'executeBudgetActionResponse' smart constructor.
data ExecuteBudgetActionResponse = ExecuteBudgetActionResponse'
  { _ebarrsResponseStatus ::
      !Int,
    _ebarrsAccountId ::
      !Text,
    _ebarrsBudgetName ::
      !Text,
    _ebarrsActionId ::
      !Text,
    _ebarrsExecutionType ::
      !ExecutionType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ExecuteBudgetActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebarrsResponseStatus' - -- | The response status code.
--
-- * 'ebarrsAccountId' - Undocumented member.
--
-- * 'ebarrsBudgetName' - Undocumented member.
--
-- * 'ebarrsActionId' - A system-generated universally unique identifier (UUID) for the action.
--
-- * 'ebarrsExecutionType' - The type of execution.
executeBudgetActionResponse ::
  -- | 'ebarrsResponseStatus'
  Int ->
  -- | 'ebarrsAccountId'
  Text ->
  -- | 'ebarrsBudgetName'
  Text ->
  -- | 'ebarrsActionId'
  Text ->
  -- | 'ebarrsExecutionType'
  ExecutionType ->
  ExecuteBudgetActionResponse
executeBudgetActionResponse
  pResponseStatus_
  pAccountId_
  pBudgetName_
  pActionId_
  pExecutionType_ =
    ExecuteBudgetActionResponse'
      { _ebarrsResponseStatus =
          pResponseStatus_,
        _ebarrsAccountId = pAccountId_,
        _ebarrsBudgetName = pBudgetName_,
        _ebarrsActionId = pActionId_,
        _ebarrsExecutionType = pExecutionType_
      }

-- | -- | The response status code.
ebarrsResponseStatus :: Lens' ExecuteBudgetActionResponse Int
ebarrsResponseStatus = lens _ebarrsResponseStatus (\s a -> s {_ebarrsResponseStatus = a})

-- | Undocumented member.
ebarrsAccountId :: Lens' ExecuteBudgetActionResponse Text
ebarrsAccountId = lens _ebarrsAccountId (\s a -> s {_ebarrsAccountId = a})

-- | Undocumented member.
ebarrsBudgetName :: Lens' ExecuteBudgetActionResponse Text
ebarrsBudgetName = lens _ebarrsBudgetName (\s a -> s {_ebarrsBudgetName = a})

-- | A system-generated universally unique identifier (UUID) for the action.
ebarrsActionId :: Lens' ExecuteBudgetActionResponse Text
ebarrsActionId = lens _ebarrsActionId (\s a -> s {_ebarrsActionId = a})

-- | The type of execution.
ebarrsExecutionType :: Lens' ExecuteBudgetActionResponse ExecutionType
ebarrsExecutionType = lens _ebarrsExecutionType (\s a -> s {_ebarrsExecutionType = a})

instance NFData ExecuteBudgetActionResponse
