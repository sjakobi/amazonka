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
-- Module      : Network.AWS.ECS.ListAccountSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the account settings for a specified principal.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ECS.ListAccountSettings
  ( -- * Creating a Request
    listAccountSettings,
    ListAccountSettings,

    -- * Request Lenses
    lasNextToken,
    lasMaxResults,
    lasEffectiveSettings,
    lasName,
    lasPrincipalARN,
    lasValue,

    -- * Destructuring the Response
    listAccountSettingsResponse,
    ListAccountSettingsResponse,

    -- * Response Lenses
    lasrrsNextToken,
    lasrrsSettings,
    lasrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAccountSettings' smart constructor.
data ListAccountSettings = ListAccountSettings'
  { _lasNextToken ::
      !(Maybe Text),
    _lasMaxResults :: !(Maybe Int),
    _lasEffectiveSettings ::
      !(Maybe Bool),
    _lasName ::
      !(Maybe SettingName),
    _lasPrincipalARN ::
      !(Maybe Text),
    _lasValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAccountSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasNextToken' - The @nextToken@ value returned from a @ListAccountSettings@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
--
-- * 'lasMaxResults' - The maximum number of account setting results returned by @ListAccountSettings@ in paginated output. When this parameter is used, @ListAccountSettings@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListAccountSettings@ request with the returned @nextToken@ value. This value can be between 1 and 10. If this parameter is not used, then @ListAccountSettings@ returns up to 10 results and a @nextToken@ value if applicable.
--
-- * 'lasEffectiveSettings' - Specifies whether to return the effective settings. If @true@ , the account settings for the root user or the default setting for the @principalArn@ are returned. If @false@ , the account settings for the @principalArn@ are returned if they are set. Otherwise, no account settings are returned.
--
-- * 'lasName' - The name of the account setting you want to list the settings for.
--
-- * 'lasPrincipalARN' - The ARN of the principal, which can be an IAM user, IAM role, or the root user. If this field is omitted, the account settings are listed only for the authenticated user.
--
-- * 'lasValue' - The value of the account settings with which to filter results. You must also specify an account setting name to use this parameter.
listAccountSettings ::
  ListAccountSettings
listAccountSettings =
  ListAccountSettings'
    { _lasNextToken = Nothing,
      _lasMaxResults = Nothing,
      _lasEffectiveSettings = Nothing,
      _lasName = Nothing,
      _lasPrincipalARN = Nothing,
      _lasValue = Nothing
    }

-- | The @nextToken@ value returned from a @ListAccountSettings@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
lasNextToken :: Lens' ListAccountSettings (Maybe Text)
lasNextToken = lens _lasNextToken (\s a -> s {_lasNextToken = a})

-- | The maximum number of account setting results returned by @ListAccountSettings@ in paginated output. When this parameter is used, @ListAccountSettings@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListAccountSettings@ request with the returned @nextToken@ value. This value can be between 1 and 10. If this parameter is not used, then @ListAccountSettings@ returns up to 10 results and a @nextToken@ value if applicable.
lasMaxResults :: Lens' ListAccountSettings (Maybe Int)
lasMaxResults = lens _lasMaxResults (\s a -> s {_lasMaxResults = a})

-- | Specifies whether to return the effective settings. If @true@ , the account settings for the root user or the default setting for the @principalArn@ are returned. If @false@ , the account settings for the @principalArn@ are returned if they are set. Otherwise, no account settings are returned.
lasEffectiveSettings :: Lens' ListAccountSettings (Maybe Bool)
lasEffectiveSettings = lens _lasEffectiveSettings (\s a -> s {_lasEffectiveSettings = a})

-- | The name of the account setting you want to list the settings for.
lasName :: Lens' ListAccountSettings (Maybe SettingName)
lasName = lens _lasName (\s a -> s {_lasName = a})

-- | The ARN of the principal, which can be an IAM user, IAM role, or the root user. If this field is omitted, the account settings are listed only for the authenticated user.
lasPrincipalARN :: Lens' ListAccountSettings (Maybe Text)
lasPrincipalARN = lens _lasPrincipalARN (\s a -> s {_lasPrincipalARN = a})

-- | The value of the account settings with which to filter results. You must also specify an account setting name to use this parameter.
lasValue :: Lens' ListAccountSettings (Maybe Text)
lasValue = lens _lasValue (\s a -> s {_lasValue = a})

instance AWSPager ListAccountSettings where
  page rq rs
    | stop (rs ^. lasrrsNextToken) = Nothing
    | stop (rs ^. lasrrsSettings) = Nothing
    | otherwise =
      Just $ rq & lasNextToken .~ rs ^. lasrrsNextToken

instance AWSRequest ListAccountSettings where
  type
    Rs ListAccountSettings =
      ListAccountSettingsResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          ListAccountSettingsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "settings" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAccountSettings

instance NFData ListAccountSettings

instance ToHeaders ListAccountSettings where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.ListAccountSettings" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAccountSettings where
  toJSON ListAccountSettings' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lasNextToken,
            ("maxResults" .=) <$> _lasMaxResults,
            ("effectiveSettings" .=) <$> _lasEffectiveSettings,
            ("name" .=) <$> _lasName,
            ("principalArn" .=) <$> _lasPrincipalARN,
            ("value" .=) <$> _lasValue
          ]
      )

instance ToPath ListAccountSettings where
  toPath = const "/"

instance ToQuery ListAccountSettings where
  toQuery = const mempty

-- | /See:/ 'listAccountSettingsResponse' smart constructor.
data ListAccountSettingsResponse = ListAccountSettingsResponse'
  { _lasrrsNextToken ::
      !(Maybe Text),
    _lasrrsSettings ::
      !( Maybe
           [Setting]
       ),
    _lasrrsResponseStatus ::
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

-- | Creates a value of 'ListAccountSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasrrsNextToken' - The @nextToken@ value to include in a future @ListAccountSettings@ request. When the results of a @ListAccountSettings@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lasrrsSettings' - The account settings for the resource.
--
-- * 'lasrrsResponseStatus' - -- | The response status code.
listAccountSettingsResponse ::
  -- | 'lasrrsResponseStatus'
  Int ->
  ListAccountSettingsResponse
listAccountSettingsResponse pResponseStatus_ =
  ListAccountSettingsResponse'
    { _lasrrsNextToken =
        Nothing,
      _lasrrsSettings = Nothing,
      _lasrrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @ListAccountSettings@ request. When the results of a @ListAccountSettings@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
lasrrsNextToken :: Lens' ListAccountSettingsResponse (Maybe Text)
lasrrsNextToken = lens _lasrrsNextToken (\s a -> s {_lasrrsNextToken = a})

-- | The account settings for the resource.
lasrrsSettings :: Lens' ListAccountSettingsResponse [Setting]
lasrrsSettings = lens _lasrrsSettings (\s a -> s {_lasrrsSettings = a}) . _Default . _Coerce

-- | -- | The response status code.
lasrrsResponseStatus :: Lens' ListAccountSettingsResponse Int
lasrrsResponseStatus = lens _lasrrsResponseStatus (\s a -> s {_lasrrsResponseStatus = a})

instance NFData ListAccountSettingsResponse
