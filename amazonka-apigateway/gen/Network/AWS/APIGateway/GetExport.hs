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
-- Module      : Network.AWS.APIGateway.GetExport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a deployed version of a 'RestApi' in a specified format.
module Network.AWS.APIGateway.GetExport
  ( -- * Creating a Request
    getExport,
    GetExport,

    -- * Request Lenses
    geAccepts,
    geParameters,
    geRestAPIId,
    geStageName,
    geExportType,

    -- * Destructuring the Response
    getExportResponse,
    GetExportResponse,

    -- * Response Lenses
    gerrsContentType,
    gerrsContentDisposition,
    gerrsBody,
    gerrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request a new export of a 'RestApi' for a particular 'Stage' .
--
--
--
-- /See:/ 'getExport' smart constructor.
data GetExport = GetExport'
  { _geAccepts ::
      !(Maybe Text),
    _geParameters :: !(Maybe (Map Text Text)),
    _geRestAPIId :: !Text,
    _geStageName :: !Text,
    _geExportType :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'geAccepts' - The content-type of the export, for example @application/json@ . Currently @application/json@ and @application/yaml@ are supported for @exportType@ of@oas30@ and @swagger@ . This should be specified in the @Accept@ header for direct API requests.
--
-- * 'geParameters' - A key-value map of query string parameters that specify properties of the export, depending on the requested @exportType@ . For @exportType@ @oas30@ and @swagger@ , any combination of the following parameters are supported: @extensions='integrations'@ or @extensions='apigateway'@ will export the API with x-amazon-apigateway-integration extensions. @extensions='authorizers'@ will export the API with x-amazon-apigateway-authorizer extensions. @postman@ will export the API with Postman extensions, allowing for import to the Postman tool
--
-- * 'geRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'geStageName' - [Required] The name of the 'Stage' that will be exported.
--
-- * 'geExportType' - [Required] The type of export. Acceptable values are 'oas30' for OpenAPI 3.0.x and 'swagger' for Swagger/OpenAPI 2.0.
getExport ::
  -- | 'geRestAPIId'
  Text ->
  -- | 'geStageName'
  Text ->
  -- | 'geExportType'
  Text ->
  GetExport
getExport pRestAPIId_ pStageName_ pExportType_ =
  GetExport'
    { _geAccepts = Nothing,
      _geParameters = Nothing,
      _geRestAPIId = pRestAPIId_,
      _geStageName = pStageName_,
      _geExportType = pExportType_
    }

-- | The content-type of the export, for example @application/json@ . Currently @application/json@ and @application/yaml@ are supported for @exportType@ of@oas30@ and @swagger@ . This should be specified in the @Accept@ header for direct API requests.
geAccepts :: Lens' GetExport (Maybe Text)
geAccepts = lens _geAccepts (\s a -> s {_geAccepts = a})

-- | A key-value map of query string parameters that specify properties of the export, depending on the requested @exportType@ . For @exportType@ @oas30@ and @swagger@ , any combination of the following parameters are supported: @extensions='integrations'@ or @extensions='apigateway'@ will export the API with x-amazon-apigateway-integration extensions. @extensions='authorizers'@ will export the API with x-amazon-apigateway-authorizer extensions. @postman@ will export the API with Postman extensions, allowing for import to the Postman tool
geParameters :: Lens' GetExport (HashMap Text Text)
geParameters = lens _geParameters (\s a -> s {_geParameters = a}) . _Default . _Map

-- | [Required] The string identifier of the associated 'RestApi' .
geRestAPIId :: Lens' GetExport Text
geRestAPIId = lens _geRestAPIId (\s a -> s {_geRestAPIId = a})

-- | [Required] The name of the 'Stage' that will be exported.
geStageName :: Lens' GetExport Text
geStageName = lens _geStageName (\s a -> s {_geStageName = a})

-- | [Required] The type of export. Acceptable values are 'oas30' for OpenAPI 3.0.x and 'swagger' for Swagger/OpenAPI 2.0.
geExportType :: Lens' GetExport Text
geExportType = lens _geExportType (\s a -> s {_geExportType = a})

instance AWSRequest GetExport where
  type Rs GetExport = GetExportResponse
  request = get apiGateway
  response =
    receiveBytes
      ( \s h x ->
          GetExportResponse'
            <$> (h .#? "Content-Type")
            <*> (h .#? "Content-Disposition")
            <*> (pure (Just x))
            <*> (pure (fromEnum s))
      )

instance Hashable GetExport

instance NFData GetExport

instance ToHeaders GetExport where
  toHeaders GetExport' {..} =
    mconcat
      [ "Accept" =# _geAccepts,
        "Accept" =# ("application/json" :: ByteString)
      ]

instance ToPath GetExport where
  toPath GetExport' {..} =
    mconcat
      [ "/restapis/",
        toBS _geRestAPIId,
        "/stages/",
        toBS _geStageName,
        "/exports/",
        toBS _geExportType
      ]

instance ToQuery GetExport where
  toQuery GetExport' {..} =
    mconcat
      [ "parameters"
          =: toQuery
            (toQueryMap "entry" "key" "value" <$> _geParameters)
      ]

-- | The binary blob response to 'GetExport' , which contains the generated SDK.
--
--
--
-- /See:/ 'getExportResponse' smart constructor.
data GetExportResponse = GetExportResponse'
  { _gerrsContentType ::
      !(Maybe Text),
    _gerrsContentDisposition ::
      !(Maybe Text),
    _gerrsBody :: !(Maybe ByteString),
    _gerrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetExportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gerrsContentType' - The content-type header value in the HTTP response. This will correspond to a valid 'accept' type in the request.
--
-- * 'gerrsContentDisposition' - The content-disposition header value in the HTTP response.
--
-- * 'gerrsBody' - The binary blob response to 'GetExport' , which contains the export.
--
-- * 'gerrsResponseStatus' - -- | The response status code.
getExportResponse ::
  -- | 'gerrsResponseStatus'
  Int ->
  GetExportResponse
getExportResponse pResponseStatus_ =
  GetExportResponse'
    { _gerrsContentType = Nothing,
      _gerrsContentDisposition = Nothing,
      _gerrsBody = Nothing,
      _gerrsResponseStatus = pResponseStatus_
    }

-- | The content-type header value in the HTTP response. This will correspond to a valid 'accept' type in the request.
gerrsContentType :: Lens' GetExportResponse (Maybe Text)
gerrsContentType = lens _gerrsContentType (\s a -> s {_gerrsContentType = a})

-- | The content-disposition header value in the HTTP response.
gerrsContentDisposition :: Lens' GetExportResponse (Maybe Text)
gerrsContentDisposition = lens _gerrsContentDisposition (\s a -> s {_gerrsContentDisposition = a})

-- | The binary blob response to 'GetExport' , which contains the export.
gerrsBody :: Lens' GetExportResponse (Maybe ByteString)
gerrsBody = lens _gerrsBody (\s a -> s {_gerrsBody = a})

-- | -- | The response status code.
gerrsResponseStatus :: Lens' GetExportResponse Int
gerrsResponseStatus = lens _gerrsResponseStatus (\s a -> s {_gerrsResponseStatus = a})

instance NFData GetExportResponse
