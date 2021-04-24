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
-- Module      : Network.AWS.Athena.StartQueryExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs the SQL query statements contained in the @Query@ . Requires you to have access to the workgroup in which the query ran. Running queries against an external catalog requires 'GetDataCatalog' permission to the catalog. For code samples using the AWS SDK for Java, see <http://docs.aws.amazon.com/athena/latest/ug/code-samples.html Examples and Code Samples> in the /Amazon Athena User Guide/ .
module Network.AWS.Athena.StartQueryExecution
  ( -- * Creating a Request
    startQueryExecution,
    StartQueryExecution,

    -- * Request Lenses
    sqeQueryExecutionContext,
    sqeResultConfiguration,
    sqeWorkGroup,
    sqeClientRequestToken,
    sqeQueryString,

    -- * Destructuring the Response
    startQueryExecutionResponse,
    StartQueryExecutionResponse,

    -- * Response Lenses
    sqerrsQueryExecutionId,
    sqerrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startQueryExecution' smart constructor.
data StartQueryExecution = StartQueryExecution'
  { _sqeQueryExecutionContext ::
      !(Maybe QueryExecutionContext),
    _sqeResultConfiguration ::
      !(Maybe ResultConfiguration),
    _sqeWorkGroup :: !(Maybe Text),
    _sqeClientRequestToken ::
      !(Maybe Text),
    _sqeQueryString :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartQueryExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqeQueryExecutionContext' - The database within which the query executes.
--
-- * 'sqeResultConfiguration' - Specifies information about where and how to save the results of the query execution. If the query runs in a workgroup, then workgroup's settings may override query settings. This affects the query results location. The workgroup settings override is specified in EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See 'WorkGroupConfiguration$EnforceWorkGroupConfiguration' .
--
-- * 'sqeWorkGroup' - The name of the workgroup in which the query is being started.
--
-- * 'sqeClientRequestToken' - A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another @StartQueryExecution@ request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the @QueryString@ , an error is returned. /Important:/ This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.
--
-- * 'sqeQueryString' - The SQL query statements to be executed.
startQueryExecution ::
  -- | 'sqeQueryString'
  Text ->
  StartQueryExecution
startQueryExecution pQueryString_ =
  StartQueryExecution'
    { _sqeQueryExecutionContext =
        Nothing,
      _sqeResultConfiguration = Nothing,
      _sqeWorkGroup = Nothing,
      _sqeClientRequestToken = Nothing,
      _sqeQueryString = pQueryString_
    }

-- | The database within which the query executes.
sqeQueryExecutionContext :: Lens' StartQueryExecution (Maybe QueryExecutionContext)
sqeQueryExecutionContext = lens _sqeQueryExecutionContext (\s a -> s {_sqeQueryExecutionContext = a})

-- | Specifies information about where and how to save the results of the query execution. If the query runs in a workgroup, then workgroup's settings may override query settings. This affects the query results location. The workgroup settings override is specified in EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See 'WorkGroupConfiguration$EnforceWorkGroupConfiguration' .
sqeResultConfiguration :: Lens' StartQueryExecution (Maybe ResultConfiguration)
sqeResultConfiguration = lens _sqeResultConfiguration (\s a -> s {_sqeResultConfiguration = a})

-- | The name of the workgroup in which the query is being started.
sqeWorkGroup :: Lens' StartQueryExecution (Maybe Text)
sqeWorkGroup = lens _sqeWorkGroup (\s a -> s {_sqeWorkGroup = a})

-- | A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another @StartQueryExecution@ request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the @QueryString@ , an error is returned. /Important:/ This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.
sqeClientRequestToken :: Lens' StartQueryExecution (Maybe Text)
sqeClientRequestToken = lens _sqeClientRequestToken (\s a -> s {_sqeClientRequestToken = a})

-- | The SQL query statements to be executed.
sqeQueryString :: Lens' StartQueryExecution Text
sqeQueryString = lens _sqeQueryString (\s a -> s {_sqeQueryString = a})

instance AWSRequest StartQueryExecution where
  type
    Rs StartQueryExecution =
      StartQueryExecutionResponse
  request = postJSON athena
  response =
    receiveJSON
      ( \s h x ->
          StartQueryExecutionResponse'
            <$> (x .?> "QueryExecutionId") <*> (pure (fromEnum s))
      )

instance Hashable StartQueryExecution

instance NFData StartQueryExecution

instance ToHeaders StartQueryExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonAthena.StartQueryExecution" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartQueryExecution where
  toJSON StartQueryExecution' {..} =
    object
      ( catMaybes
          [ ("QueryExecutionContext" .=)
              <$> _sqeQueryExecutionContext,
            ("ResultConfiguration" .=)
              <$> _sqeResultConfiguration,
            ("WorkGroup" .=) <$> _sqeWorkGroup,
            ("ClientRequestToken" .=) <$> _sqeClientRequestToken,
            Just ("QueryString" .= _sqeQueryString)
          ]
      )

instance ToPath StartQueryExecution where
  toPath = const "/"

instance ToQuery StartQueryExecution where
  toQuery = const mempty

-- | /See:/ 'startQueryExecutionResponse' smart constructor.
data StartQueryExecutionResponse = StartQueryExecutionResponse'
  { _sqerrsQueryExecutionId ::
      !(Maybe Text),
    _sqerrsResponseStatus ::
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

-- | Creates a value of 'StartQueryExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqerrsQueryExecutionId' - The unique ID of the query that ran as a result of this request.
--
-- * 'sqerrsResponseStatus' - -- | The response status code.
startQueryExecutionResponse ::
  -- | 'sqerrsResponseStatus'
  Int ->
  StartQueryExecutionResponse
startQueryExecutionResponse pResponseStatus_ =
  StartQueryExecutionResponse'
    { _sqerrsQueryExecutionId =
        Nothing,
      _sqerrsResponseStatus = pResponseStatus_
    }

-- | The unique ID of the query that ran as a result of this request.
sqerrsQueryExecutionId :: Lens' StartQueryExecutionResponse (Maybe Text)
sqerrsQueryExecutionId = lens _sqerrsQueryExecutionId (\s a -> s {_sqerrsQueryExecutionId = a})

-- | -- | The response status code.
sqerrsResponseStatus :: Lens' StartQueryExecutionResponse Int
sqerrsResponseStatus = lens _sqerrsResponseStatus (\s a -> s {_sqerrsResponseStatus = a})

instance NFData StartQueryExecutionResponse
