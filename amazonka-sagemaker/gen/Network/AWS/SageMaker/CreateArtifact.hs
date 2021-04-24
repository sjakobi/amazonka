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
-- Module      : Network.AWS.SageMaker.CreateArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an /artifact/ . An artifact is a lineage tracking entity that represents a URI addressable object or data. Some examples are the S3 URI of a dataset and the ECR registry path of an image. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html Amazon SageMaker ML Lineage Tracking> .
module Network.AWS.SageMaker.CreateArtifact
  ( -- * Creating a Request
    createArtifact,
    CreateArtifact,

    -- * Request Lenses
    caaMetadataProperties,
    caaArtifactName,
    caaTags,
    caaProperties,
    caaSource,
    caaArtifactType,

    -- * Destructuring the Response
    createArtifactResponse,
    CreateArtifactResponse,

    -- * Response Lenses
    crsArtifactARN,
    crsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createArtifact' smart constructor.
data CreateArtifact = CreateArtifact'
  { _caaMetadataProperties ::
      !(Maybe MetadataProperties),
    _caaArtifactName :: !(Maybe Text),
    _caaTags :: !(Maybe [Tag]),
    _caaProperties ::
      !(Maybe (Map Text Text)),
    _caaSource :: !ArtifactSource,
    _caaArtifactType :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caaMetadataProperties' - Undocumented member.
--
-- * 'caaArtifactName' - The name of the artifact. Must be unique to your account in an AWS Region.
--
-- * 'caaTags' - A list of tags to apply to the artifact.
--
-- * 'caaProperties' - A list of properties to add to the artifact.
--
-- * 'caaSource' - The ID, ID type, and URI of the source.
--
-- * 'caaArtifactType' - The artifact type.
createArtifact ::
  -- | 'caaSource'
  ArtifactSource ->
  -- | 'caaArtifactType'
  Text ->
  CreateArtifact
createArtifact pSource_ pArtifactType_ =
  CreateArtifact'
    { _caaMetadataProperties = Nothing,
      _caaArtifactName = Nothing,
      _caaTags = Nothing,
      _caaProperties = Nothing,
      _caaSource = pSource_,
      _caaArtifactType = pArtifactType_
    }

-- | Undocumented member.
caaMetadataProperties :: Lens' CreateArtifact (Maybe MetadataProperties)
caaMetadataProperties = lens _caaMetadataProperties (\s a -> s {_caaMetadataProperties = a})

-- | The name of the artifact. Must be unique to your account in an AWS Region.
caaArtifactName :: Lens' CreateArtifact (Maybe Text)
caaArtifactName = lens _caaArtifactName (\s a -> s {_caaArtifactName = a})

-- | A list of tags to apply to the artifact.
caaTags :: Lens' CreateArtifact [Tag]
caaTags = lens _caaTags (\s a -> s {_caaTags = a}) . _Default . _Coerce

-- | A list of properties to add to the artifact.
caaProperties :: Lens' CreateArtifact (HashMap Text Text)
caaProperties = lens _caaProperties (\s a -> s {_caaProperties = a}) . _Default . _Map

-- | The ID, ID type, and URI of the source.
caaSource :: Lens' CreateArtifact ArtifactSource
caaSource = lens _caaSource (\s a -> s {_caaSource = a})

-- | The artifact type.
caaArtifactType :: Lens' CreateArtifact Text
caaArtifactType = lens _caaArtifactType (\s a -> s {_caaArtifactType = a})

instance AWSRequest CreateArtifact where
  type Rs CreateArtifact = CreateArtifactResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateArtifactResponse'
            <$> (x .?> "ArtifactArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateArtifact

instance NFData CreateArtifact

instance ToHeaders CreateArtifact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateArtifact" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateArtifact where
  toJSON CreateArtifact' {..} =
    object
      ( catMaybes
          [ ("MetadataProperties" .=)
              <$> _caaMetadataProperties,
            ("ArtifactName" .=) <$> _caaArtifactName,
            ("Tags" .=) <$> _caaTags,
            ("Properties" .=) <$> _caaProperties,
            Just ("Source" .= _caaSource),
            Just ("ArtifactType" .= _caaArtifactType)
          ]
      )

instance ToPath CreateArtifact where
  toPath = const "/"

instance ToQuery CreateArtifact where
  toQuery = const mempty

-- | /See:/ 'createArtifactResponse' smart constructor.
data CreateArtifactResponse = CreateArtifactResponse'
  { _crsArtifactARN ::
      !(Maybe Text),
    _crsResponseStatus ::
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

-- | Creates a value of 'CreateArtifactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsArtifactARN' - The Amazon Resource Name (ARN) of the artifact.
--
-- * 'crsResponseStatus' - -- | The response status code.
createArtifactResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateArtifactResponse
createArtifactResponse pResponseStatus_ =
  CreateArtifactResponse'
    { _crsArtifactARN = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the artifact.
crsArtifactARN :: Lens' CreateArtifactResponse (Maybe Text)
crsArtifactARN = lens _crsArtifactARN (\s a -> s {_crsArtifactARN = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateArtifactResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateArtifactResponse
