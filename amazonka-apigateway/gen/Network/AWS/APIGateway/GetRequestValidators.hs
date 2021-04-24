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
-- Module      : Network.AWS.APIGateway.GetRequestValidators
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the 'RequestValidators' collection of a given 'RestApi' .
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetRequestValidators
  ( -- * Creating a Request
    getRequestValidators,
    GetRequestValidators,

    -- * Request Lenses
    grvPosition,
    grvLimit,
    grvRestAPIId,

    -- * Destructuring the Response
    getRequestValidatorsResponse,
    GetRequestValidatorsResponse,

    -- * Response Lenses
    grvrrsItems,
    grvrrsPosition,
    grvrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Gets the 'RequestValidators' collection of a given 'RestApi' .
--
--
--
-- /See:/ 'getRequestValidators' smart constructor.
data GetRequestValidators = GetRequestValidators'
  { _grvPosition ::
      !(Maybe Text),
    _grvLimit :: !(Maybe Int),
    _grvRestAPIId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRequestValidators' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grvPosition' - The current pagination position in the paged result set.
--
-- * 'grvLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'grvRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
getRequestValidators ::
  -- | 'grvRestAPIId'
  Text ->
  GetRequestValidators
getRequestValidators pRestAPIId_ =
  GetRequestValidators'
    { _grvPosition = Nothing,
      _grvLimit = Nothing,
      _grvRestAPIId = pRestAPIId_
    }

-- | The current pagination position in the paged result set.
grvPosition :: Lens' GetRequestValidators (Maybe Text)
grvPosition = lens _grvPosition (\s a -> s {_grvPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
grvLimit :: Lens' GetRequestValidators (Maybe Int)
grvLimit = lens _grvLimit (\s a -> s {_grvLimit = a})

-- | [Required] The string identifier of the associated 'RestApi' .
grvRestAPIId :: Lens' GetRequestValidators Text
grvRestAPIId = lens _grvRestAPIId (\s a -> s {_grvRestAPIId = a})

instance AWSPager GetRequestValidators where
  page rq rs
    | stop (rs ^. grvrrsPosition) = Nothing
    | stop (rs ^. grvrrsItems) = Nothing
    | otherwise =
      Just $ rq & grvPosition .~ rs ^. grvrrsPosition

instance AWSRequest GetRequestValidators where
  type
    Rs GetRequestValidators =
      GetRequestValidatorsResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetRequestValidatorsResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRequestValidators

instance NFData GetRequestValidators

instance ToHeaders GetRequestValidators where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetRequestValidators where
  toPath GetRequestValidators' {..} =
    mconcat
      [ "/restapis/",
        toBS _grvRestAPIId,
        "/requestvalidators"
      ]

instance ToQuery GetRequestValidators where
  toQuery GetRequestValidators' {..} =
    mconcat
      ["position" =: _grvPosition, "limit" =: _grvLimit]

-- | A collection of 'RequestValidator' resources of a given 'RestApi' .
--
--
-- In OpenAPI, the 'RequestValidators' of an API is defined by the <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validators.html x-amazon-apigateway-request-validators> extension.
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html Enable Basic Request Validation in API Gateway>
--
-- /See:/ 'getRequestValidatorsResponse' smart constructor.
data GetRequestValidatorsResponse = GetRequestValidatorsResponse'
  { _grvrrsItems ::
      !( Maybe
           [RequestValidator]
       ),
    _grvrrsPosition ::
      !(Maybe Text),
    _grvrrsResponseStatus ::
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

-- | Creates a value of 'GetRequestValidatorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grvrrsItems' - The current page of elements from this collection.
--
-- * 'grvrrsPosition' - Undocumented member.
--
-- * 'grvrrsResponseStatus' - -- | The response status code.
getRequestValidatorsResponse ::
  -- | 'grvrrsResponseStatus'
  Int ->
  GetRequestValidatorsResponse
getRequestValidatorsResponse pResponseStatus_ =
  GetRequestValidatorsResponse'
    { _grvrrsItems =
        Nothing,
      _grvrrsPosition = Nothing,
      _grvrrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
grvrrsItems :: Lens' GetRequestValidatorsResponse [RequestValidator]
grvrrsItems = lens _grvrrsItems (\s a -> s {_grvrrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
grvrrsPosition :: Lens' GetRequestValidatorsResponse (Maybe Text)
grvrrsPosition = lens _grvrrsPosition (\s a -> s {_grvrrsPosition = a})

-- | -- | The response status code.
grvrrsResponseStatus :: Lens' GetRequestValidatorsResponse Int
grvrrsResponseStatus = lens _grvrrsResponseStatus (\s a -> s {_grvrrsResponseStatus = a})

instance NFData GetRequestValidatorsResponse
