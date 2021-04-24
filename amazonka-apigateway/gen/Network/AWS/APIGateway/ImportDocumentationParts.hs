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
-- Module      : Network.AWS.APIGateway.ImportDocumentationParts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undocumented operation.
module Network.AWS.APIGateway.ImportDocumentationParts
  ( -- * Creating a Request
    importDocumentationParts,
    ImportDocumentationParts,

    -- * Request Lenses
    idpMode,
    idpFailOnWarnings,
    idpRestAPIId,
    idpBody,

    -- * Destructuring the Response
    importDocumentationPartsResponse,
    ImportDocumentationPartsResponse,

    -- * Response Lenses
    idprrsWarnings,
    idprrsIds,
    idprrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Import documentation parts from an external (e.g., OpenAPI) definition file.
--
--
--
-- /See:/ 'importDocumentationParts' smart constructor.
data ImportDocumentationParts = ImportDocumentationParts'
  { _idpMode ::
      !(Maybe PutMode),
    _idpFailOnWarnings ::
      !(Maybe Bool),
    _idpRestAPIId ::
      !Text,
    _idpBody ::
      !ByteString
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportDocumentationParts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idpMode' - A query parameter to indicate whether to overwrite (@OVERWRITE@ ) any existing 'DocumentationParts' definition or to merge (@MERGE@ ) the new definition into the existing one. The default value is @MERGE@ .
--
-- * 'idpFailOnWarnings' - A query parameter to specify whether to rollback the documentation importation (@true@ ) or not (@false@ ) when a warning is encountered. The default value is @false@ .
--
-- * 'idpRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'idpBody' - [Required] Raw byte array representing the to-be-imported documentation parts. To import from an OpenAPI file, this is a JSON object.
importDocumentationParts ::
  -- | 'idpRestAPIId'
  Text ->
  -- | 'idpBody'
  ByteString ->
  ImportDocumentationParts
importDocumentationParts pRestAPIId_ pBody_ =
  ImportDocumentationParts'
    { _idpMode = Nothing,
      _idpFailOnWarnings = Nothing,
      _idpRestAPIId = pRestAPIId_,
      _idpBody = pBody_
    }

-- | A query parameter to indicate whether to overwrite (@OVERWRITE@ ) any existing 'DocumentationParts' definition or to merge (@MERGE@ ) the new definition into the existing one. The default value is @MERGE@ .
idpMode :: Lens' ImportDocumentationParts (Maybe PutMode)
idpMode = lens _idpMode (\s a -> s {_idpMode = a})

-- | A query parameter to specify whether to rollback the documentation importation (@true@ ) or not (@false@ ) when a warning is encountered. The default value is @false@ .
idpFailOnWarnings :: Lens' ImportDocumentationParts (Maybe Bool)
idpFailOnWarnings = lens _idpFailOnWarnings (\s a -> s {_idpFailOnWarnings = a})

-- | [Required] The string identifier of the associated 'RestApi' .
idpRestAPIId :: Lens' ImportDocumentationParts Text
idpRestAPIId = lens _idpRestAPIId (\s a -> s {_idpRestAPIId = a})

-- | [Required] Raw byte array representing the to-be-imported documentation parts. To import from an OpenAPI file, this is a JSON object.
idpBody :: Lens' ImportDocumentationParts ByteString
idpBody = lens _idpBody (\s a -> s {_idpBody = a})

instance AWSRequest ImportDocumentationParts where
  type
    Rs ImportDocumentationParts =
      ImportDocumentationPartsResponse
  request = putBody apiGateway
  response =
    receiveJSON
      ( \s h x ->
          ImportDocumentationPartsResponse'
            <$> (x .?> "warnings" .!@ mempty)
            <*> (x .?> "ids" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ImportDocumentationParts

instance NFData ImportDocumentationParts

instance ToBody ImportDocumentationParts where
  toBody = toBody . _idpBody

instance ToHeaders ImportDocumentationParts where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath ImportDocumentationParts where
  toPath ImportDocumentationParts' {..} =
    mconcat
      [ "/restapis/",
        toBS _idpRestAPIId,
        "/documentation/parts"
      ]

instance ToQuery ImportDocumentationParts where
  toQuery ImportDocumentationParts' {..} =
    mconcat
      [ "mode" =: _idpMode,
        "failonwarnings" =: _idpFailOnWarnings
      ]

-- | A collection of the imported 'DocumentationPart' identifiers.
--
--
-- This is used to return the result when documentation parts in an external (e.g., OpenAPI) file are imported into API Gateway<https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html Documenting an API> , <https://docs.aws.amazon.com/apigateway/api-reference/link-relation/documentationpart-import/ documentationpart:import> , 'DocumentationPart'
--
-- /See:/ 'importDocumentationPartsResponse' smart constructor.
data ImportDocumentationPartsResponse = ImportDocumentationPartsResponse'
  { _idprrsWarnings ::
      !( Maybe
           [Text]
       ),
    _idprrsIds ::
      !( Maybe
           [Text]
       ),
    _idprrsResponseStatus ::
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

-- | Creates a value of 'ImportDocumentationPartsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idprrsWarnings' - A list of warning messages reported during import of documentation parts.
--
-- * 'idprrsIds' - A list of the returned documentation part identifiers.
--
-- * 'idprrsResponseStatus' - -- | The response status code.
importDocumentationPartsResponse ::
  -- | 'idprrsResponseStatus'
  Int ->
  ImportDocumentationPartsResponse
importDocumentationPartsResponse pResponseStatus_ =
  ImportDocumentationPartsResponse'
    { _idprrsWarnings =
        Nothing,
      _idprrsIds = Nothing,
      _idprrsResponseStatus = pResponseStatus_
    }

-- | A list of warning messages reported during import of documentation parts.
idprrsWarnings :: Lens' ImportDocumentationPartsResponse [Text]
idprrsWarnings = lens _idprrsWarnings (\s a -> s {_idprrsWarnings = a}) . _Default . _Coerce

-- | A list of the returned documentation part identifiers.
idprrsIds :: Lens' ImportDocumentationPartsResponse [Text]
idprrsIds = lens _idprrsIds (\s a -> s {_idprrsIds = a}) . _Default . _Coerce

-- | -- | The response status code.
idprrsResponseStatus :: Lens' ImportDocumentationPartsResponse Int
idprrsResponseStatus = lens _idprrsResponseStatus (\s a -> s {_idprrsResponseStatus = a})

instance NFData ImportDocumentationPartsResponse
