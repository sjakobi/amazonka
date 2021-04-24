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
-- Module      : Network.AWS.DynamoDB.UpdateContributorInsights
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the status for contributor insights for a specific table or index.
module Network.AWS.DynamoDB.UpdateContributorInsights
  ( -- * Creating a Request
    updateContributorInsights,
    UpdateContributorInsights,

    -- * Request Lenses
    uciIndexName,
    uciTableName,
    uciContributorInsightsAction,

    -- * Destructuring the Response
    updateContributorInsightsResponse,
    UpdateContributorInsightsResponse,

    -- * Response Lenses
    ucirrsTableName,
    ucirrsIndexName,
    ucirrsContributorInsightsStatus,
    ucirrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateContributorInsights' smart constructor.
data UpdateContributorInsights = UpdateContributorInsights'
  { _uciIndexName ::
      !(Maybe Text),
    _uciTableName ::
      !Text,
    _uciContributorInsightsAction ::
      !ContributorInsightsAction
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateContributorInsights' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uciIndexName' - The global secondary index name, if applicable.
--
-- * 'uciTableName' - The name of the table.
--
-- * 'uciContributorInsightsAction' - Represents the contributor insights action.
updateContributorInsights ::
  -- | 'uciTableName'
  Text ->
  -- | 'uciContributorInsightsAction'
  ContributorInsightsAction ->
  UpdateContributorInsights
updateContributorInsights
  pTableName_
  pContributorInsightsAction_ =
    UpdateContributorInsights'
      { _uciIndexName = Nothing,
        _uciTableName = pTableName_,
        _uciContributorInsightsAction =
          pContributorInsightsAction_
      }

-- | The global secondary index name, if applicable.
uciIndexName :: Lens' UpdateContributorInsights (Maybe Text)
uciIndexName = lens _uciIndexName (\s a -> s {_uciIndexName = a})

-- | The name of the table.
uciTableName :: Lens' UpdateContributorInsights Text
uciTableName = lens _uciTableName (\s a -> s {_uciTableName = a})

-- | Represents the contributor insights action.
uciContributorInsightsAction :: Lens' UpdateContributorInsights ContributorInsightsAction
uciContributorInsightsAction = lens _uciContributorInsightsAction (\s a -> s {_uciContributorInsightsAction = a})

instance AWSRequest UpdateContributorInsights where
  type
    Rs UpdateContributorInsights =
      UpdateContributorInsightsResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          UpdateContributorInsightsResponse'
            <$> (x .?> "TableName")
            <*> (x .?> "IndexName")
            <*> (x .?> "ContributorInsightsStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateContributorInsights

instance NFData UpdateContributorInsights

instance ToHeaders UpdateContributorInsights where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDB_20120810.UpdateContributorInsights" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON UpdateContributorInsights where
  toJSON UpdateContributorInsights' {..} =
    object
      ( catMaybes
          [ ("IndexName" .=) <$> _uciIndexName,
            Just ("TableName" .= _uciTableName),
            Just
              ( "ContributorInsightsAction"
                  .= _uciContributorInsightsAction
              )
          ]
      )

instance ToPath UpdateContributorInsights where
  toPath = const "/"

instance ToQuery UpdateContributorInsights where
  toQuery = const mempty

-- | /See:/ 'updateContributorInsightsResponse' smart constructor.
data UpdateContributorInsightsResponse = UpdateContributorInsightsResponse'
  { _ucirrsTableName ::
      !( Maybe
           Text
       ),
    _ucirrsIndexName ::
      !( Maybe
           Text
       ),
    _ucirrsContributorInsightsStatus ::
      !( Maybe
           ContributorInsightsStatus
       ),
    _ucirrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateContributorInsightsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucirrsTableName' - The name of the table.
--
-- * 'ucirrsIndexName' - The name of the global secondary index, if applicable.
--
-- * 'ucirrsContributorInsightsStatus' - The status of contributor insights
--
-- * 'ucirrsResponseStatus' - -- | The response status code.
updateContributorInsightsResponse ::
  -- | 'ucirrsResponseStatus'
  Int ->
  UpdateContributorInsightsResponse
updateContributorInsightsResponse pResponseStatus_ =
  UpdateContributorInsightsResponse'
    { _ucirrsTableName =
        Nothing,
      _ucirrsIndexName = Nothing,
      _ucirrsContributorInsightsStatus =
        Nothing,
      _ucirrsResponseStatus = pResponseStatus_
    }

-- | The name of the table.
ucirrsTableName :: Lens' UpdateContributorInsightsResponse (Maybe Text)
ucirrsTableName = lens _ucirrsTableName (\s a -> s {_ucirrsTableName = a})

-- | The name of the global secondary index, if applicable.
ucirrsIndexName :: Lens' UpdateContributorInsightsResponse (Maybe Text)
ucirrsIndexName = lens _ucirrsIndexName (\s a -> s {_ucirrsIndexName = a})

-- | The status of contributor insights
ucirrsContributorInsightsStatus :: Lens' UpdateContributorInsightsResponse (Maybe ContributorInsightsStatus)
ucirrsContributorInsightsStatus = lens _ucirrsContributorInsightsStatus (\s a -> s {_ucirrsContributorInsightsStatus = a})

-- | -- | The response status code.
ucirrsResponseStatus :: Lens' UpdateContributorInsightsResponse Int
ucirrsResponseStatus = lens _ucirrsResponseStatus (\s a -> s {_ucirrsResponseStatus = a})

instance NFData UpdateContributorInsightsResponse
