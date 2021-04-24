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
-- Module      : Network.AWS.Budgets.DescribeBudgetAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a budget action detail.
module Network.AWS.Budgets.DescribeBudgetAction
  ( -- * Creating a Request
    describeBudgetAction,
    DescribeBudgetAction,

    -- * Request Lenses
    dbaAccountId,
    dbaBudgetName,
    dbaActionId,

    -- * Destructuring the Response
    describeBudgetActionResponse,
    DescribeBudgetActionResponse,

    -- * Response Lenses
    dbarbrsResponseStatus,
    dbarbrsAccountId,
    dbarbrsBudgetName,
    dbarbrsAction,
  )
where

import Network.AWS.Budgets.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeBudgetAction' smart constructor.
data DescribeBudgetAction = DescribeBudgetAction'
  { _dbaAccountId ::
      !Text,
    _dbaBudgetName :: !Text,
    _dbaActionId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeBudgetAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbaAccountId' - Undocumented member.
--
-- * 'dbaBudgetName' - Undocumented member.
--
-- * 'dbaActionId' - A system-generated universally unique identifier (UUID) for the action.
describeBudgetAction ::
  -- | 'dbaAccountId'
  Text ->
  -- | 'dbaBudgetName'
  Text ->
  -- | 'dbaActionId'
  Text ->
  DescribeBudgetAction
describeBudgetAction
  pAccountId_
  pBudgetName_
  pActionId_ =
    DescribeBudgetAction'
      { _dbaAccountId = pAccountId_,
        _dbaBudgetName = pBudgetName_,
        _dbaActionId = pActionId_
      }

-- | Undocumented member.
dbaAccountId :: Lens' DescribeBudgetAction Text
dbaAccountId = lens _dbaAccountId (\s a -> s {_dbaAccountId = a})

-- | Undocumented member.
dbaBudgetName :: Lens' DescribeBudgetAction Text
dbaBudgetName = lens _dbaBudgetName (\s a -> s {_dbaBudgetName = a})

-- | A system-generated universally unique identifier (UUID) for the action.
dbaActionId :: Lens' DescribeBudgetAction Text
dbaActionId = lens _dbaActionId (\s a -> s {_dbaActionId = a})

instance AWSRequest DescribeBudgetAction where
  type
    Rs DescribeBudgetAction =
      DescribeBudgetActionResponse
  request = postJSON budgets
  response =
    receiveJSON
      ( \s h x ->
          DescribeBudgetActionResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "AccountId")
            <*> (x .:> "BudgetName")
            <*> (x .:> "Action")
      )

instance Hashable DescribeBudgetAction

instance NFData DescribeBudgetAction

instance ToHeaders DescribeBudgetAction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSBudgetServiceGateway.DescribeBudgetAction" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeBudgetAction where
  toJSON DescribeBudgetAction' {..} =
    object
      ( catMaybes
          [ Just ("AccountId" .= _dbaAccountId),
            Just ("BudgetName" .= _dbaBudgetName),
            Just ("ActionId" .= _dbaActionId)
          ]
      )

instance ToPath DescribeBudgetAction where
  toPath = const "/"

instance ToQuery DescribeBudgetAction where
  toQuery = const mempty

-- | /See:/ 'describeBudgetActionResponse' smart constructor.
data DescribeBudgetActionResponse = DescribeBudgetActionResponse'
  { _dbarbrsResponseStatus ::
      !Int,
    _dbarbrsAccountId ::
      !Text,
    _dbarbrsBudgetName ::
      !Text,
    _dbarbrsAction ::
      !Action
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeBudgetActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbarbrsResponseStatus' - -- | The response status code.
--
-- * 'dbarbrsAccountId' - Undocumented member.
--
-- * 'dbarbrsBudgetName' - Undocumented member.
--
-- * 'dbarbrsAction' - A budget action resource.
describeBudgetActionResponse ::
  -- | 'dbarbrsResponseStatus'
  Int ->
  -- | 'dbarbrsAccountId'
  Text ->
  -- | 'dbarbrsBudgetName'
  Text ->
  -- | 'dbarbrsAction'
  Action ->
  DescribeBudgetActionResponse
describeBudgetActionResponse
  pResponseStatus_
  pAccountId_
  pBudgetName_
  pAction_ =
    DescribeBudgetActionResponse'
      { _dbarbrsResponseStatus =
          pResponseStatus_,
        _dbarbrsAccountId = pAccountId_,
        _dbarbrsBudgetName = pBudgetName_,
        _dbarbrsAction = pAction_
      }

-- | -- | The response status code.
dbarbrsResponseStatus :: Lens' DescribeBudgetActionResponse Int
dbarbrsResponseStatus = lens _dbarbrsResponseStatus (\s a -> s {_dbarbrsResponseStatus = a})

-- | Undocumented member.
dbarbrsAccountId :: Lens' DescribeBudgetActionResponse Text
dbarbrsAccountId = lens _dbarbrsAccountId (\s a -> s {_dbarbrsAccountId = a})

-- | Undocumented member.
dbarbrsBudgetName :: Lens' DescribeBudgetActionResponse Text
dbarbrsBudgetName = lens _dbarbrsBudgetName (\s a -> s {_dbarbrsBudgetName = a})

-- | A budget action resource.
dbarbrsAction :: Lens' DescribeBudgetActionResponse Action
dbarbrsAction = lens _dbarbrsAction (\s a -> s {_dbarbrsAction = a})

instance NFData DescribeBudgetActionResponse
