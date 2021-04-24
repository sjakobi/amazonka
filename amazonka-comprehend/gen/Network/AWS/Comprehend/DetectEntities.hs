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
-- Module      : Network.AWS.Comprehend.DetectEntities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspects text for named entities, and returns information about them. For more information, about named entities, see 'how-entities' .
module Network.AWS.Comprehend.DetectEntities
  ( -- * Creating a Request
    detectEntities,
    DetectEntities,

    -- * Request Lenses
    desLanguageCode,
    desEndpointARN,
    desText,

    -- * Destructuring the Response
    detectEntitiesResponse,
    DetectEntitiesResponse,

    -- * Response Lenses
    detrsEntities,
    detrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detectEntities' smart constructor.
data DetectEntities = DetectEntities'
  { _desLanguageCode ::
      !(Maybe LanguageCode),
    _desEndpointARN :: !(Maybe Text),
    _desText :: !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetectEntities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desLanguageCode' - The language of the input documents. You can specify any of the primary languages supported by Amazon Comprehend. All documents must be in the same language. If your request includes the endpoint for a custom entity recognition model, Amazon Comprehend uses the language of your custom model, and it ignores any language code that you specify here.
--
-- * 'desEndpointARN' - The Amazon Resource Name of an endpoint that is associated with a custom entity recognition model. Provide an endpoint if you want to detect entities by using your own custom model instead of the default model that is used by Amazon Comprehend. If you specify an endpoint, Amazon Comprehend uses the language of your custom model, and it ignores any language code that you provide in your request.
--
-- * 'desText' - A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.
detectEntities ::
  -- | 'desText'
  Text ->
  DetectEntities
detectEntities pText_ =
  DetectEntities'
    { _desLanguageCode = Nothing,
      _desEndpointARN = Nothing,
      _desText = _Sensitive # pText_
    }

-- | The language of the input documents. You can specify any of the primary languages supported by Amazon Comprehend. All documents must be in the same language. If your request includes the endpoint for a custom entity recognition model, Amazon Comprehend uses the language of your custom model, and it ignores any language code that you specify here.
desLanguageCode :: Lens' DetectEntities (Maybe LanguageCode)
desLanguageCode = lens _desLanguageCode (\s a -> s {_desLanguageCode = a})

-- | The Amazon Resource Name of an endpoint that is associated with a custom entity recognition model. Provide an endpoint if you want to detect entities by using your own custom model instead of the default model that is used by Amazon Comprehend. If you specify an endpoint, Amazon Comprehend uses the language of your custom model, and it ignores any language code that you provide in your request.
desEndpointARN :: Lens' DetectEntities (Maybe Text)
desEndpointARN = lens _desEndpointARN (\s a -> s {_desEndpointARN = a})

-- | A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.
desText :: Lens' DetectEntities Text
desText = lens _desText (\s a -> s {_desText = a}) . _Sensitive

instance AWSRequest DetectEntities where
  type Rs DetectEntities = DetectEntitiesResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DetectEntitiesResponse'
            <$> (x .?> "Entities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DetectEntities

instance NFData DetectEntities

instance ToHeaders DetectEntities where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Comprehend_20171127.DetectEntities" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DetectEntities where
  toJSON DetectEntities' {..} =
    object
      ( catMaybes
          [ ("LanguageCode" .=) <$> _desLanguageCode,
            ("EndpointArn" .=) <$> _desEndpointARN,
            Just ("Text" .= _desText)
          ]
      )

instance ToPath DetectEntities where
  toPath = const "/"

instance ToQuery DetectEntities where
  toQuery = const mempty

-- | /See:/ 'detectEntitiesResponse' smart constructor.
data DetectEntitiesResponse = DetectEntitiesResponse'
  { _detrsEntities ::
      !(Maybe [Entity]),
    _detrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetectEntitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detrsEntities' - A collection of entities identified in the input text. For each entity, the response provides the entity text, entity type, where the entity text begins and ends, and the level of confidence that Amazon Comprehend has in the detection.  If your request uses a custom entity recognition model, Amazon Comprehend detects the entities that the model is trained to recognize. Otherwise, it detects the default entity types. For a list of default entity types, see 'how-entities' .
--
-- * 'detrsResponseStatus' - -- | The response status code.
detectEntitiesResponse ::
  -- | 'detrsResponseStatus'
  Int ->
  DetectEntitiesResponse
detectEntitiesResponse pResponseStatus_ =
  DetectEntitiesResponse'
    { _detrsEntities = Nothing,
      _detrsResponseStatus = pResponseStatus_
    }

-- | A collection of entities identified in the input text. For each entity, the response provides the entity text, entity type, where the entity text begins and ends, and the level of confidence that Amazon Comprehend has in the detection.  If your request uses a custom entity recognition model, Amazon Comprehend detects the entities that the model is trained to recognize. Otherwise, it detects the default entity types. For a list of default entity types, see 'how-entities' .
detrsEntities :: Lens' DetectEntitiesResponse [Entity]
detrsEntities = lens _detrsEntities (\s a -> s {_detrsEntities = a}) . _Default . _Coerce

-- | -- | The response status code.
detrsResponseStatus :: Lens' DetectEntitiesResponse Int
detrsResponseStatus = lens _detrsResponseStatus (\s a -> s {_detrsResponseStatus = a})

instance NFData DetectEntitiesResponse
