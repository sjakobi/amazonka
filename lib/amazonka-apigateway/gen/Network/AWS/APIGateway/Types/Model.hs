{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.Model
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.Model where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the data structure of a method's request or response payload.
--
--
-- A request model defines the data structure of the client-supplied request payload. A response model defines the data structure of the response payload returned by the back end. Although not required, models are useful for mapping payloads between the front end and back end.
--
-- A model is used for generating an API's SDK, validating the input request body, and creating a skeletal mapping template.
--
-- 'Method' , 'MethodResponse' , <https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html Models and Mappings>
--
-- /See:/ 'model' smart constructor.
data Model = Model'
  { _mSchema :: !(Maybe Text),
    _mName :: !(Maybe Text),
    _mId :: !(Maybe Text),
    _mDescription :: !(Maybe Text),
    _mContentType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Model' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mSchema' - The schema for the model. For @application/json@ models, this should be <https://tools.ietf.org/html/draft-zyp-json-schema-04 JSON schema draft 4> model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.
--
-- * 'mName' - The name of the model. Must be an alphanumeric string.
--
-- * 'mId' - The identifier for the model resource.
--
-- * 'mDescription' - The description of the model.
--
-- * 'mContentType' - The content-type for the model.
model ::
  Model
model =
  Model'
    { _mSchema = Nothing,
      _mName = Nothing,
      _mId = Nothing,
      _mDescription = Nothing,
      _mContentType = Nothing
    }

-- | The schema for the model. For @application/json@ models, this should be <https://tools.ietf.org/html/draft-zyp-json-schema-04 JSON schema draft 4> model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.
mSchema :: Lens' Model (Maybe Text)
mSchema = lens _mSchema (\s a -> s {_mSchema = a})

-- | The name of the model. Must be an alphanumeric string.
mName :: Lens' Model (Maybe Text)
mName = lens _mName (\s a -> s {_mName = a})

-- | The identifier for the model resource.
mId :: Lens' Model (Maybe Text)
mId = lens _mId (\s a -> s {_mId = a})

-- | The description of the model.
mDescription :: Lens' Model (Maybe Text)
mDescription = lens _mDescription (\s a -> s {_mDescription = a})

-- | The content-type for the model.
mContentType :: Lens' Model (Maybe Text)
mContentType = lens _mContentType (\s a -> s {_mContentType = a})

instance FromJSON Model where
  parseJSON =
    withObject
      "Model"
      ( \x ->
          Model'
            <$> (x .:? "schema")
            <*> (x .:? "name")
            <*> (x .:? "id")
            <*> (x .:? "description")
            <*> (x .:? "contentType")
      )

instance Hashable Model

instance NFData Model
