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
-- Module      : Network.AWS.Budgets.DeleteBudget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a budget. You can delete your budget at any time.
--
--
-- /Important:/ Deleting a budget also deletes the notifications and subscribers that are associated with that budget.
module Network.AWS.Budgets.DeleteBudget
  ( -- * Creating a Request
    deleteBudget,
    DeleteBudget,

    -- * Request Lenses
    dbAccountId,
    dbBudgetName,

    -- * Destructuring the Response
    deleteBudgetResponse,
    DeleteBudgetResponse,

    -- * Response Lenses
    dbrrsResponseStatus,
  )
where

import Network.AWS.Budgets.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request of DeleteBudget
--
--
--
-- /See:/ 'deleteBudget' smart constructor.
data DeleteBudget = DeleteBudget'
  { _dbAccountId ::
      !Text,
    _dbBudgetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBudget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbAccountId' - The @accountId@ that is associated with the budget that you want to delete.
--
-- * 'dbBudgetName' - The name of the budget that you want to delete.
deleteBudget ::
  -- | 'dbAccountId'
  Text ->
  -- | 'dbBudgetName'
  Text ->
  DeleteBudget
deleteBudget pAccountId_ pBudgetName_ =
  DeleteBudget'
    { _dbAccountId = pAccountId_,
      _dbBudgetName = pBudgetName_
    }

-- | The @accountId@ that is associated with the budget that you want to delete.
dbAccountId :: Lens' DeleteBudget Text
dbAccountId = lens _dbAccountId (\s a -> s {_dbAccountId = a})

-- | The name of the budget that you want to delete.
dbBudgetName :: Lens' DeleteBudget Text
dbBudgetName = lens _dbBudgetName (\s a -> s {_dbBudgetName = a})

instance AWSRequest DeleteBudget where
  type Rs DeleteBudget = DeleteBudgetResponse
  request = postJSON budgets
  response =
    receiveEmpty
      ( \s h x ->
          DeleteBudgetResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteBudget

instance NFData DeleteBudget

instance ToHeaders DeleteBudget where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSBudgetServiceGateway.DeleteBudget" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteBudget where
  toJSON DeleteBudget' {..} =
    object
      ( catMaybes
          [ Just ("AccountId" .= _dbAccountId),
            Just ("BudgetName" .= _dbBudgetName)
          ]
      )

instance ToPath DeleteBudget where
  toPath = const "/"

instance ToQuery DeleteBudget where
  toQuery = const mempty

-- | Response of DeleteBudget
--
--
--
-- /See:/ 'deleteBudgetResponse' smart constructor.
newtype DeleteBudgetResponse = DeleteBudgetResponse'
  { _dbrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteBudgetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbrrsResponseStatus' - -- | The response status code.
deleteBudgetResponse ::
  -- | 'dbrrsResponseStatus'
  Int ->
  DeleteBudgetResponse
deleteBudgetResponse pResponseStatus_ =
  DeleteBudgetResponse'
    { _dbrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dbrrsResponseStatus :: Lens' DeleteBudgetResponse Int
dbrrsResponseStatus = lens _dbrrsResponseStatus (\s a -> s {_dbrrsResponseStatus = a})

instance NFData DeleteBudgetResponse
