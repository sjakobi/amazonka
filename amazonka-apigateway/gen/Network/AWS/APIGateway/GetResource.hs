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
-- Module      : Network.AWS.APIGateway.GetResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about a resource.
module Network.AWS.APIGateway.GetResource
  ( -- * Creating a Request
    getResource,
    GetResource,

    -- * Request Lenses
    grrEmbed,
    grrRestAPIId,
    grrResourceId,

    -- * Destructuring the Response
    resource,
    Resource,

    -- * Response Lenses
    rId,
    rPathPart,
    rParentId,
    rResourceMethods,
    rPath,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to list information about a resource.
--
--
--
-- /See:/ 'getResource' smart constructor.
data GetResource = GetResource'
  { _grrEmbed ::
      !(Maybe [Text]),
    _grrRestAPIId :: !Text,
    _grrResourceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrEmbed' - A query parameter to retrieve the specified resources embedded in the returned 'Resource' representation in the response. This @embed@ parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded 'Method' resources this way. The query parameter value must be a single-valued list and contain the @"methods"@ string. For example, @GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods@ .
--
-- * 'grrRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'grrResourceId' - [Required] The identifier for the 'Resource' resource.
getResource ::
  -- | 'grrRestAPIId'
  Text ->
  -- | 'grrResourceId'
  Text ->
  GetResource
getResource pRestAPIId_ pResourceId_ =
  GetResource'
    { _grrEmbed = Nothing,
      _grrRestAPIId = pRestAPIId_,
      _grrResourceId = pResourceId_
    }

-- | A query parameter to retrieve the specified resources embedded in the returned 'Resource' representation in the response. This @embed@ parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded 'Method' resources this way. The query parameter value must be a single-valued list and contain the @"methods"@ string. For example, @GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods@ .
grrEmbed :: Lens' GetResource [Text]
grrEmbed = lens _grrEmbed (\s a -> s {_grrEmbed = a}) . _Default . _Coerce

-- | [Required] The string identifier of the associated 'RestApi' .
grrRestAPIId :: Lens' GetResource Text
grrRestAPIId = lens _grrRestAPIId (\s a -> s {_grrRestAPIId = a})

-- | [Required] The identifier for the 'Resource' resource.
grrResourceId :: Lens' GetResource Text
grrResourceId = lens _grrResourceId (\s a -> s {_grrResourceId = a})

instance AWSRequest GetResource where
  type Rs GetResource = Resource
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetResource

instance NFData GetResource

instance ToHeaders GetResource where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetResource where
  toPath GetResource' {..} =
    mconcat
      [ "/restapis/",
        toBS _grrRestAPIId,
        "/resources/",
        toBS _grrResourceId
      ]

instance ToQuery GetResource where
  toQuery GetResource' {..} =
    mconcat
      [ "embed"
          =: toQuery (toQueryList "member" <$> _grrEmbed)
      ]
