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
-- Module      : Network.AWS.APIGateway.GetDocumentationVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undocumented operation.
module Network.AWS.APIGateway.GetDocumentationVersion
  ( -- * Creating a Request
    getDocumentationVersion,
    GetDocumentationVersion,

    -- * Request Lenses
    gdvRestAPIId,
    gdvDocumentationVersion,

    -- * Destructuring the Response
    documentationVersion,
    DocumentationVersion,

    -- * Response Lenses
    dvCreatedDate,
    dvVersion,
    dvDescription,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Gets a documentation snapshot of an API.
--
--
--
-- /See:/ 'getDocumentationVersion' smart constructor.
data GetDocumentationVersion = GetDocumentationVersion'
  { _gdvRestAPIId ::
      !Text,
    _gdvDocumentationVersion ::
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

-- | Creates a value of 'GetDocumentationVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdvRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'gdvDocumentationVersion' - [Required] The version identifier of the to-be-retrieved documentation snapshot.
getDocumentationVersion ::
  -- | 'gdvRestAPIId'
  Text ->
  -- | 'gdvDocumentationVersion'
  Text ->
  GetDocumentationVersion
getDocumentationVersion
  pRestAPIId_
  pDocumentationVersion_ =
    GetDocumentationVersion'
      { _gdvRestAPIId =
          pRestAPIId_,
        _gdvDocumentationVersion = pDocumentationVersion_
      }

-- | [Required] The string identifier of the associated 'RestApi' .
gdvRestAPIId :: Lens' GetDocumentationVersion Text
gdvRestAPIId = lens _gdvRestAPIId (\s a -> s {_gdvRestAPIId = a})

-- | [Required] The version identifier of the to-be-retrieved documentation snapshot.
gdvDocumentationVersion :: Lens' GetDocumentationVersion Text
gdvDocumentationVersion = lens _gdvDocumentationVersion (\s a -> s {_gdvDocumentationVersion = a})

instance AWSRequest GetDocumentationVersion where
  type
    Rs GetDocumentationVersion =
      DocumentationVersion
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetDocumentationVersion

instance NFData GetDocumentationVersion

instance ToHeaders GetDocumentationVersion where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetDocumentationVersion where
  toPath GetDocumentationVersion' {..} =
    mconcat
      [ "/restapis/",
        toBS _gdvRestAPIId,
        "/documentation/versions/",
        toBS _gdvDocumentationVersion
      ]

instance ToQuery GetDocumentationVersion where
  toQuery = const mempty
