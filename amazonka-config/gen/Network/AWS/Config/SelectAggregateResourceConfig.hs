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
-- Module      : Network.AWS.Config.SelectAggregateResourceConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of AWS resources across multiple accounts and regions, performs the corresponding search, and returns resource configurations matching the properties.
--
--
-- For more information about query components, see the <https://docs.aws.amazon.com/config/latest/developerguide/query-components.html __Query Components__ > section in the AWS Config Developer Guide.
module Network.AWS.Config.SelectAggregateResourceConfig
  ( -- * Creating a Request
    selectAggregateResourceConfig,
    SelectAggregateResourceConfig,

    -- * Request Lenses
    sarcNextToken,
    sarcMaxResults,
    sarcLimit,
    sarcExpression,
    sarcConfigurationAggregatorName,

    -- * Destructuring the Response
    selectAggregateResourceConfigResponse,
    SelectAggregateResourceConfigResponse,

    -- * Response Lenses
    sarcrrsNextToken,
    sarcrrsQueryInfo,
    sarcrrsResults,
    sarcrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'selectAggregateResourceConfig' smart constructor.
data SelectAggregateResourceConfig = SelectAggregateResourceConfig'
  { _sarcNextToken ::
      !( Maybe
           Text
       ),
    _sarcMaxResults ::
      !( Maybe
           Nat
       ),
    _sarcLimit ::
      !( Maybe
           Nat
       ),
    _sarcExpression ::
      !Text,
    _sarcConfigurationAggregatorName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SelectAggregateResourceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sarcNextToken' - The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'sarcMaxResults' - The maximum number of query results returned on each page. AWS Config also allows the Limit request parameter.
--
-- * 'sarcLimit' - The maximum number of query results returned on each page.
--
-- * 'sarcExpression' - The SQL query SELECT command.
--
-- * 'sarcConfigurationAggregatorName' - The name of the configuration aggregator.
selectAggregateResourceConfig ::
  -- | 'sarcExpression'
  Text ->
  -- | 'sarcConfigurationAggregatorName'
  Text ->
  SelectAggregateResourceConfig
selectAggregateResourceConfig
  pExpression_
  pConfigurationAggregatorName_ =
    SelectAggregateResourceConfig'
      { _sarcNextToken =
          Nothing,
        _sarcMaxResults = Nothing,
        _sarcLimit = Nothing,
        _sarcExpression = pExpression_,
        _sarcConfigurationAggregatorName =
          pConfigurationAggregatorName_
      }

-- | The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.
sarcNextToken :: Lens' SelectAggregateResourceConfig (Maybe Text)
sarcNextToken = lens _sarcNextToken (\s a -> s {_sarcNextToken = a})

-- | The maximum number of query results returned on each page. AWS Config also allows the Limit request parameter.
sarcMaxResults :: Lens' SelectAggregateResourceConfig (Maybe Natural)
sarcMaxResults = lens _sarcMaxResults (\s a -> s {_sarcMaxResults = a}) . mapping _Nat

-- | The maximum number of query results returned on each page.
sarcLimit :: Lens' SelectAggregateResourceConfig (Maybe Natural)
sarcLimit = lens _sarcLimit (\s a -> s {_sarcLimit = a}) . mapping _Nat

-- | The SQL query SELECT command.
sarcExpression :: Lens' SelectAggregateResourceConfig Text
sarcExpression = lens _sarcExpression (\s a -> s {_sarcExpression = a})

-- | The name of the configuration aggregator.
sarcConfigurationAggregatorName :: Lens' SelectAggregateResourceConfig Text
sarcConfigurationAggregatorName = lens _sarcConfigurationAggregatorName (\s a -> s {_sarcConfigurationAggregatorName = a})

instance AWSRequest SelectAggregateResourceConfig where
  type
    Rs SelectAggregateResourceConfig =
      SelectAggregateResourceConfigResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          SelectAggregateResourceConfigResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "QueryInfo")
            <*> (x .?> "Results" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable SelectAggregateResourceConfig

instance NFData SelectAggregateResourceConfig

instance ToHeaders SelectAggregateResourceConfig where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.SelectAggregateResourceConfig" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SelectAggregateResourceConfig where
  toJSON SelectAggregateResourceConfig' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _sarcNextToken,
            ("MaxResults" .=) <$> _sarcMaxResults,
            ("Limit" .=) <$> _sarcLimit,
            Just ("Expression" .= _sarcExpression),
            Just
              ( "ConfigurationAggregatorName"
                  .= _sarcConfigurationAggregatorName
              )
          ]
      )

instance ToPath SelectAggregateResourceConfig where
  toPath = const "/"

instance ToQuery SelectAggregateResourceConfig where
  toQuery = const mempty

-- | /See:/ 'selectAggregateResourceConfigResponse' smart constructor.
data SelectAggregateResourceConfigResponse = SelectAggregateResourceConfigResponse'
  { _sarcrrsNextToken ::
      !( Maybe
           Text
       ),
    _sarcrrsQueryInfo ::
      !( Maybe
           QueryInfo
       ),
    _sarcrrsResults ::
      !( Maybe
           [Text]
       ),
    _sarcrrsResponseStatus ::
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

-- | Creates a value of 'SelectAggregateResourceConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sarcrrsNextToken' - The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'sarcrrsQueryInfo' - Undocumented member.
--
-- * 'sarcrrsResults' - Returns the results for the SQL query.
--
-- * 'sarcrrsResponseStatus' - -- | The response status code.
selectAggregateResourceConfigResponse ::
  -- | 'sarcrrsResponseStatus'
  Int ->
  SelectAggregateResourceConfigResponse
selectAggregateResourceConfigResponse
  pResponseStatus_ =
    SelectAggregateResourceConfigResponse'
      { _sarcrrsNextToken =
          Nothing,
        _sarcrrsQueryInfo = Nothing,
        _sarcrrsResults = Nothing,
        _sarcrrsResponseStatus =
          pResponseStatus_
      }

-- | The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.
sarcrrsNextToken :: Lens' SelectAggregateResourceConfigResponse (Maybe Text)
sarcrrsNextToken = lens _sarcrrsNextToken (\s a -> s {_sarcrrsNextToken = a})

-- | Undocumented member.
sarcrrsQueryInfo :: Lens' SelectAggregateResourceConfigResponse (Maybe QueryInfo)
sarcrrsQueryInfo = lens _sarcrrsQueryInfo (\s a -> s {_sarcrrsQueryInfo = a})

-- | Returns the results for the SQL query.
sarcrrsResults :: Lens' SelectAggregateResourceConfigResponse [Text]
sarcrrsResults = lens _sarcrrsResults (\s a -> s {_sarcrrsResults = a}) . _Default . _Coerce

-- | -- | The response status code.
sarcrrsResponseStatus :: Lens' SelectAggregateResourceConfigResponse Int
sarcrrsResponseStatus = lens _sarcrrsResponseStatus (\s a -> s {_sarcrrsResponseStatus = a})

instance NFData SelectAggregateResourceConfigResponse
