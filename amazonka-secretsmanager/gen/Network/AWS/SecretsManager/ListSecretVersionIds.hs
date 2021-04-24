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
-- Module      : Network.AWS.SecretsManager.ListSecretVersionIds
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the versions attached to the specified secret. The output does not include the @SecretString@ or @SecretBinary@ fields. By default, the list includes only versions that have at least one staging label in @VersionStage@ attached.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * secretsmanager:ListSecretVersionIds
--
--
--
-- __Related operations__
--
--     * To list the secrets in an account, use 'ListSecrets' .
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.SecretsManager.ListSecretVersionIds
  ( -- * Creating a Request
    listSecretVersionIds,
    ListSecretVersionIds,

    -- * Request Lenses
    lsviNextToken,
    lsviMaxResults,
    lsviIncludeDeprecated,
    lsviSecretId,

    -- * Destructuring the Response
    listSecretVersionIdsResponse,
    ListSecretVersionIdsResponse,

    -- * Response Lenses
    lsvirrsNextToken,
    lsvirrsVersions,
    lsvirrsARN,
    lsvirrsName,
    lsvirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'listSecretVersionIds' smart constructor.
data ListSecretVersionIds = ListSecretVersionIds'
  { _lsviNextToken ::
      !(Maybe Text),
    _lsviMaxResults ::
      !(Maybe Nat),
    _lsviIncludeDeprecated ::
      !(Maybe Bool),
    _lsviSecretId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSecretVersionIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsviNextToken' - (Optional) Use this parameter in a request if you receive a @NextToken@ response in a previous request indicating there's more output available. In a subsequent call, set it to the value of the previous call @NextToken@ response to indicate where the output should continue from.
--
-- * 'lsviMaxResults' - (Optional) Limits the number of results you want to include in the response. If you don't include this parameter, it defaults to a value that's specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (isn't null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Secrets Manager might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
--
-- * 'lsviIncludeDeprecated' - (Optional) Specifies that you want the results to include versions that do not have any staging labels attached to them. Such versions are considered deprecated and are subject to deletion by Secrets Manager as needed.
--
-- * 'lsviSecretId' - The identifier for the secret containing the versions you want to list. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
listSecretVersionIds ::
  -- | 'lsviSecretId'
  Text ->
  ListSecretVersionIds
listSecretVersionIds pSecretId_ =
  ListSecretVersionIds'
    { _lsviNextToken = Nothing,
      _lsviMaxResults = Nothing,
      _lsviIncludeDeprecated = Nothing,
      _lsviSecretId = pSecretId_
    }

-- | (Optional) Use this parameter in a request if you receive a @NextToken@ response in a previous request indicating there's more output available. In a subsequent call, set it to the value of the previous call @NextToken@ response to indicate where the output should continue from.
lsviNextToken :: Lens' ListSecretVersionIds (Maybe Text)
lsviNextToken = lens _lsviNextToken (\s a -> s {_lsviNextToken = a})

-- | (Optional) Limits the number of results you want to include in the response. If you don't include this parameter, it defaults to a value that's specific to the operation. If additional items exist beyond the maximum you specify, the @NextToken@ response element is present and has a value (isn't null). Include that value as the @NextToken@ request parameter in the next call to the operation to get the next part of the results. Note that Secrets Manager might return fewer results than the maximum even when there are more results available. You should check @NextToken@ after every operation to ensure that you receive all of the results.
lsviMaxResults :: Lens' ListSecretVersionIds (Maybe Natural)
lsviMaxResults = lens _lsviMaxResults (\s a -> s {_lsviMaxResults = a}) . mapping _Nat

-- | (Optional) Specifies that you want the results to include versions that do not have any staging labels attached to them. Such versions are considered deprecated and are subject to deletion by Secrets Manager as needed.
lsviIncludeDeprecated :: Lens' ListSecretVersionIds (Maybe Bool)
lsviIncludeDeprecated = lens _lsviIncludeDeprecated (\s a -> s {_lsviIncludeDeprecated = a})

-- | The identifier for the secret containing the versions you want to list. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
lsviSecretId :: Lens' ListSecretVersionIds Text
lsviSecretId = lens _lsviSecretId (\s a -> s {_lsviSecretId = a})

instance AWSPager ListSecretVersionIds where
  page rq rs
    | stop (rs ^. lsvirrsNextToken) = Nothing
    | stop (rs ^. lsvirrsVersions) = Nothing
    | otherwise =
      Just $ rq & lsviNextToken .~ rs ^. lsvirrsNextToken

instance AWSRequest ListSecretVersionIds where
  type
    Rs ListSecretVersionIds =
      ListSecretVersionIdsResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          ListSecretVersionIdsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Versions" .!@ mempty)
            <*> (x .?> "ARN")
            <*> (x .?> "Name")
            <*> (pure (fromEnum s))
      )

instance Hashable ListSecretVersionIds

instance NFData ListSecretVersionIds

instance ToHeaders ListSecretVersionIds where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "secretsmanager.ListSecretVersionIds" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSecretVersionIds where
  toJSON ListSecretVersionIds' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lsviNextToken,
            ("MaxResults" .=) <$> _lsviMaxResults,
            ("IncludeDeprecated" .=) <$> _lsviIncludeDeprecated,
            Just ("SecretId" .= _lsviSecretId)
          ]
      )

instance ToPath ListSecretVersionIds where
  toPath = const "/"

instance ToQuery ListSecretVersionIds where
  toQuery = const mempty

-- | /See:/ 'listSecretVersionIdsResponse' smart constructor.
data ListSecretVersionIdsResponse = ListSecretVersionIdsResponse'
  { _lsvirrsNextToken ::
      !(Maybe Text),
    _lsvirrsVersions ::
      !( Maybe
           [SecretVersionsListEntry]
       ),
    _lsvirrsARN ::
      !(Maybe Text),
    _lsvirrsName ::
      !(Maybe Text),
    _lsvirrsResponseStatus ::
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

-- | Creates a value of 'ListSecretVersionIdsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsvirrsNextToken' - If present in the response, this value indicates that there's more output available than included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the @NextToken@ response element comes back empty (as @null@ ).
--
-- * 'lsvirrsVersions' - The list of the currently available versions of the specified secret.
--
-- * 'lsvirrsARN' - The Amazon Resource Name (ARN) for the secret.
--
-- * 'lsvirrsName' - The friendly name of the secret.
--
-- * 'lsvirrsResponseStatus' - -- | The response status code.
listSecretVersionIdsResponse ::
  -- | 'lsvirrsResponseStatus'
  Int ->
  ListSecretVersionIdsResponse
listSecretVersionIdsResponse pResponseStatus_ =
  ListSecretVersionIdsResponse'
    { _lsvirrsNextToken =
        Nothing,
      _lsvirrsVersions = Nothing,
      _lsvirrsARN = Nothing,
      _lsvirrsName = Nothing,
      _lsvirrsResponseStatus = pResponseStatus_
    }

-- | If present in the response, this value indicates that there's more output available than included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the @NextToken@ request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the @NextToken@ response element comes back empty (as @null@ ).
lsvirrsNextToken :: Lens' ListSecretVersionIdsResponse (Maybe Text)
lsvirrsNextToken = lens _lsvirrsNextToken (\s a -> s {_lsvirrsNextToken = a})

-- | The list of the currently available versions of the specified secret.
lsvirrsVersions :: Lens' ListSecretVersionIdsResponse [SecretVersionsListEntry]
lsvirrsVersions = lens _lsvirrsVersions (\s a -> s {_lsvirrsVersions = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) for the secret.
lsvirrsARN :: Lens' ListSecretVersionIdsResponse (Maybe Text)
lsvirrsARN = lens _lsvirrsARN (\s a -> s {_lsvirrsARN = a})

-- | The friendly name of the secret.
lsvirrsName :: Lens' ListSecretVersionIdsResponse (Maybe Text)
lsvirrsName = lens _lsvirrsName (\s a -> s {_lsvirrsName = a})

-- | -- | The response status code.
lsvirrsResponseStatus :: Lens' ListSecretVersionIdsResponse Int
lsvirrsResponseStatus = lens _lsvirrsResponseStatus (\s a -> s {_lsvirrsResponseStatus = a})

instance NFData ListSecretVersionIdsResponse
