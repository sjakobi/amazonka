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
-- Module      : Network.AWS.APIGateway.GetBasePathMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe a 'BasePathMapping' resource.
module Network.AWS.APIGateway.GetBasePathMapping
  ( -- * Creating a Request
    getBasePathMapping,
    GetBasePathMapping,

    -- * Request Lenses
    gDomainName,
    gBasePath,

    -- * Destructuring the Response
    basePathMapping,
    BasePathMapping,

    -- * Response Lenses
    bpmBasePath,
    bpmStage,
    bpmRestAPIId,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to describe a 'BasePathMapping' resource.
--
--
--
-- /See:/ 'getBasePathMapping' smart constructor.
data GetBasePathMapping = GetBasePathMapping'
  { _gDomainName ::
      !Text,
    _gBasePath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBasePathMapping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gDomainName' - [Required] The domain name of the 'BasePathMapping' resource to be described.
--
-- * 'gBasePath' - [Required] The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify any base path name after the domain name.
getBasePathMapping ::
  -- | 'gDomainName'
  Text ->
  -- | 'gBasePath'
  Text ->
  GetBasePathMapping
getBasePathMapping pDomainName_ pBasePath_ =
  GetBasePathMapping'
    { _gDomainName = pDomainName_,
      _gBasePath = pBasePath_
    }

-- | [Required] The domain name of the 'BasePathMapping' resource to be described.
gDomainName :: Lens' GetBasePathMapping Text
gDomainName = lens _gDomainName (\s a -> s {_gDomainName = a})

-- | [Required] The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify any base path name after the domain name.
gBasePath :: Lens' GetBasePathMapping Text
gBasePath = lens _gBasePath (\s a -> s {_gBasePath = a})

instance AWSRequest GetBasePathMapping where
  type Rs GetBasePathMapping = BasePathMapping
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetBasePathMapping

instance NFData GetBasePathMapping

instance ToHeaders GetBasePathMapping where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetBasePathMapping where
  toPath GetBasePathMapping' {..} =
    mconcat
      [ "/domainnames/",
        toBS _gDomainName,
        "/basepathmappings/",
        toBS _gBasePath
      ]

instance ToQuery GetBasePathMapping where
  toQuery = const mempty
