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
-- Module      : Network.AWS.SecretsManager.ListSecrets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the secrets that are stored by Secrets Manager in the AWS account. To list the versions currently stored for a specific secret, use 'ListSecretVersionIds' . The encrypted fields @SecretString@ and @SecretBinary@ are not included in the output. To get that information, call the 'GetSecretValue' operation.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * secretsmanager:ListSecrets
--
--
--
-- __Related operations__
--
--     * To list the versions attached to a secret, use 'ListSecretVersionIds' .
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.SecretsManager.ListSecrets
  ( -- * Creating a Request
    listSecrets,
    ListSecrets,

    -- * Request Lenses
    lsSortOrder,
    lsNextToken,
    lsMaxResults,
    lsFilters,

    -- * Destructuring the Response
    listSecretsResponse,
    ListSecretsResponse,

    -- * Response Lenses
    lsrrsNextToken,
    lsrrsSecretList,
    lsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'listSecrets' smart constructor.
data ListSecrets = ListSecrets'
  { _lsSortOrder ::
      !(Maybe SortOrderType),
    _lsNextToken :: !(Maybe Text),
    _lsMaxResults :: !(Maybe Nat),
    _lsFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSecrets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsSortOrder' - Lists secrets in the requested order.
--
-- * 'lsNextToken' - (Optional) Use this parameter in a request if you receive a @NextToken@ response in a previous request indicating there's more output available. In a subsequent call, set it to the value of the previous call @NextToken@ response to indicate where the output should continue from.
--
-- * 'lsMaxResults' - (Optional) Limits the number of results you want to include in the response. If you don't include this parameter, it defaults to a value that's specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (isn't null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Secrets Manager might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
--
-- * 'lsFilters' - Lists the secret request filters.
listSecrets ::
  ListSecrets
listSecrets =
  ListSecrets'
    { _lsSortOrder = Nothing,
      _lsNextToken = Nothing,
      _lsMaxResults = Nothing,
      _lsFilters = Nothing
    }

-- | Lists secrets in the requested order.
lsSortOrder :: Lens' ListSecrets (Maybe SortOrderType)
lsSortOrder = lens _lsSortOrder (\s a -> s {_lsSortOrder = a})

-- | (Optional) Use this parameter in a request if you receive a @NextToken@ response in a previous request indicating there's more output available. In a subsequent call, set it to the value of the previous call @NextToken@ response to indicate where the output should continue from.
lsNextToken :: Lens' ListSecrets (Maybe Text)
lsNextToken = lens _lsNextToken (\s a -> s {_lsNextToken = a})

-- | (Optional) Limits the number of results you want to include in the response. If you don't include this parameter, it defaults to a value that's specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (isn't null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Secrets Manager might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
lsMaxResults :: Lens' ListSecrets (Maybe Natural)
lsMaxResults = lens _lsMaxResults (\s a -> s {_lsMaxResults = a}) . mapping _Nat

-- | Lists the secret request filters.
lsFilters :: Lens' ListSecrets [Filter]
lsFilters = lens _lsFilters (\s a -> s {_lsFilters = a}) . _Default . _Coerce

instance AWSPager ListSecrets where
  page rq rs
    | stop (rs ^. lsrrsNextToken) = Nothing
    | stop (rs ^. lsrrsSecretList) = Nothing
    | otherwise =
      Just $ rq & lsNextToken .~ rs ^. lsrrsNextToken

instance AWSRequest ListSecrets where
  type Rs ListSecrets = ListSecretsResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          ListSecretsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "SecretList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListSecrets

instance NFData ListSecrets

instance ToHeaders ListSecrets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("secretsmanager.ListSecrets" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSecrets where
  toJSON ListSecrets' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lsSortOrder,
            ("NextToken" .=) <$> _lsNextToken,
            ("MaxResults" .=) <$> _lsMaxResults,
            ("Filters" .=) <$> _lsFilters
          ]
      )

instance ToPath ListSecrets where
  toPath = const "/"

instance ToQuery ListSecrets where
  toQuery = const mempty

-- | /See:/ 'listSecretsResponse' smart constructor.
data ListSecretsResponse = ListSecretsResponse'
  { _lsrrsNextToken ::
      !(Maybe Text),
    _lsrrsSecretList ::
      !(Maybe [SecretListEntry]),
    _lsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSecretsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsNextToken' - If present in the response, this value indicates that there's more output available than included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the @NextToken@ response element comes back empty (as @null@ ).
--
-- * 'lsrrsSecretList' - A list of the secrets in the account.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listSecretsResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListSecretsResponse
listSecretsResponse pResponseStatus_ =
  ListSecretsResponse'
    { _lsrrsNextToken = Nothing,
      _lsrrsSecretList = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | If present in the response, this value indicates that there's more output available than included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the @NextToken@ response element comes back empty (as @null@ ).
lsrrsNextToken :: Lens' ListSecretsResponse (Maybe Text)
lsrrsNextToken = lens _lsrrsNextToken (\s a -> s {_lsrrsNextToken = a})

-- | A list of the secrets in the account.
lsrrsSecretList :: Lens' ListSecretsResponse [SecretListEntry]
lsrrsSecretList = lens _lsrrsSecretList (\s a -> s {_lsrrsSecretList = a}) . _Default . _Coerce

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListSecretsResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListSecretsResponse
