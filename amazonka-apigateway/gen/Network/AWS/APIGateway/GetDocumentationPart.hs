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
-- Module      : Network.AWS.APIGateway.GetDocumentationPart
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undocumented operation.
module Network.AWS.APIGateway.GetDocumentationPart
  ( -- * Creating a Request
    getDocumentationPart,
    GetDocumentationPart,

    -- * Request Lenses
    gdpRestAPIId,
    gdpDocumentationPartId,

    -- * Destructuring the Response
    documentationPart,
    DocumentationPart,

    -- * Response Lenses
    dpId,
    dpProperties,
    dpLocation,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Gets a specified documentation part of a given API.
--
--
--
-- /See:/ 'getDocumentationPart' smart constructor.
data GetDocumentationPart = GetDocumentationPart'
  { _gdpRestAPIId ::
      !Text,
    _gdpDocumentationPartId ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDocumentationPart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'gdpDocumentationPartId' - [Required] The string identifier of the associated 'RestApi' .
getDocumentationPart ::
  -- | 'gdpRestAPIId'
  Text ->
  -- | 'gdpDocumentationPartId'
  Text ->
  GetDocumentationPart
getDocumentationPart
  pRestAPIId_
  pDocumentationPartId_ =
    GetDocumentationPart'
      { _gdpRestAPIId = pRestAPIId_,
        _gdpDocumentationPartId = pDocumentationPartId_
      }

-- | [Required] The string identifier of the associated 'RestApi' .
gdpRestAPIId :: Lens' GetDocumentationPart Text
gdpRestAPIId = lens _gdpRestAPIId (\s a -> s {_gdpRestAPIId = a})

-- | [Required] The string identifier of the associated 'RestApi' .
gdpDocumentationPartId :: Lens' GetDocumentationPart Text
gdpDocumentationPartId = lens _gdpDocumentationPartId (\s a -> s {_gdpDocumentationPartId = a})

instance AWSRequest GetDocumentationPart where
  type Rs GetDocumentationPart = DocumentationPart
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetDocumentationPart

instance NFData GetDocumentationPart

instance ToHeaders GetDocumentationPart where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetDocumentationPart where
  toPath GetDocumentationPart' {..} =
    mconcat
      [ "/restapis/",
        toBS _gdpRestAPIId,
        "/documentation/parts/",
        toBS _gdpDocumentationPartId
      ]

instance ToQuery GetDocumentationPart where
  toQuery = const mempty
