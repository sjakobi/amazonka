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
-- Module      : Network.AWS.APIGateway.GetAuthorizers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe an existing 'Authorizers' resource.
--
--
-- <https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html AWS CLI>
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetAuthorizers
  ( -- * Creating a Request
    getAuthorizers,
    GetAuthorizers,

    -- * Request Lenses
    gasPosition,
    gasLimit,
    gasRestAPIId,

    -- * Destructuring the Response
    getAuthorizersResponse,
    GetAuthorizersResponse,

    -- * Response Lenses
    garrsItems,
    garrsPosition,
    garrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to describe an existing 'Authorizers' resource.
--
--
--
-- /See:/ 'getAuthorizers' smart constructor.
data GetAuthorizers = GetAuthorizers'
  { _gasPosition ::
      !(Maybe Text),
    _gasLimit :: !(Maybe Int),
    _gasRestAPIId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAuthorizers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasPosition' - The current pagination position in the paged result set.
--
-- * 'gasLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'gasRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
getAuthorizers ::
  -- | 'gasRestAPIId'
  Text ->
  GetAuthorizers
getAuthorizers pRestAPIId_ =
  GetAuthorizers'
    { _gasPosition = Nothing,
      _gasLimit = Nothing,
      _gasRestAPIId = pRestAPIId_
    }

-- | The current pagination position in the paged result set.
gasPosition :: Lens' GetAuthorizers (Maybe Text)
gasPosition = lens _gasPosition (\s a -> s {_gasPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gasLimit :: Lens' GetAuthorizers (Maybe Int)
gasLimit = lens _gasLimit (\s a -> s {_gasLimit = a})

-- | [Required] The string identifier of the associated 'RestApi' .
gasRestAPIId :: Lens' GetAuthorizers Text
gasRestAPIId = lens _gasRestAPIId (\s a -> s {_gasRestAPIId = a})

instance AWSPager GetAuthorizers where
  page rq rs
    | stop (rs ^. garrsPosition) = Nothing
    | stop (rs ^. garrsItems) = Nothing
    | otherwise =
      Just $ rq & gasPosition .~ rs ^. garrsPosition

instance AWSRequest GetAuthorizers where
  type Rs GetAuthorizers = GetAuthorizersResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetAuthorizersResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAuthorizers

instance NFData GetAuthorizers

instance ToHeaders GetAuthorizers where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetAuthorizers where
  toPath GetAuthorizers' {..} =
    mconcat
      ["/restapis/", toBS _gasRestAPIId, "/authorizers"]

instance ToQuery GetAuthorizers where
  toQuery GetAuthorizers' {..} =
    mconcat
      ["position" =: _gasPosition, "limit" =: _gasLimit]

-- | Represents a collection of 'Authorizer' resources.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-use-lambda-authorizer.html Use Lambda Function as Authorizer> <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-integrate-with-cognito.html Use Cognito User Pool as Authorizer>
--
-- /See:/ 'getAuthorizersResponse' smart constructor.
data GetAuthorizersResponse = GetAuthorizersResponse'
  { _garrsItems ::
      !(Maybe [Authorizer]),
    _garrsPosition ::
      !(Maybe Text),
    _garrsResponseStatus ::
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

-- | Creates a value of 'GetAuthorizersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garrsItems' - The current page of elements from this collection.
--
-- * 'garrsPosition' - Undocumented member.
--
-- * 'garrsResponseStatus' - -- | The response status code.
getAuthorizersResponse ::
  -- | 'garrsResponseStatus'
  Int ->
  GetAuthorizersResponse
getAuthorizersResponse pResponseStatus_ =
  GetAuthorizersResponse'
    { _garrsItems = Nothing,
      _garrsPosition = Nothing,
      _garrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
garrsItems :: Lens' GetAuthorizersResponse [Authorizer]
garrsItems = lens _garrsItems (\s a -> s {_garrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
garrsPosition :: Lens' GetAuthorizersResponse (Maybe Text)
garrsPosition = lens _garrsPosition (\s a -> s {_garrsPosition = a})

-- | -- | The response status code.
garrsResponseStatus :: Lens' GetAuthorizersResponse Int
garrsResponseStatus = lens _garrsResponseStatus (\s a -> s {_garrsResponseStatus = a})

instance NFData GetAuthorizersResponse
