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
-- Module      : Network.AWS.SageMaker.DescribeArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an artifact.
module Network.AWS.SageMaker.DescribeArtifact
  ( -- * Creating a Request
    describeArtifact,
    DescribeArtifact,

    -- * Request Lenses
    dArtifactARN,

    -- * Destructuring the Response
    describeArtifactResponse,
    DescribeArtifactResponse,

    -- * Response Lenses
    dararsMetadataProperties,
    dararsCreationTime,
    dararsArtifactName,
    dararsArtifactType,
    dararsArtifactARN,
    dararsSource,
    dararsProperties,
    dararsLastModifiedTime,
    dararsCreatedBy,
    dararsLastModifiedBy,
    dararsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeArtifact' smart constructor.
newtype DescribeArtifact = DescribeArtifact'
  { _dArtifactARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dArtifactARN' - The Amazon Resource Name (ARN) of the artifact to describe.
describeArtifact ::
  -- | 'dArtifactARN'
  Text ->
  DescribeArtifact
describeArtifact pArtifactARN_ =
  DescribeArtifact' {_dArtifactARN = pArtifactARN_}

-- | The Amazon Resource Name (ARN) of the artifact to describe.
dArtifactARN :: Lens' DescribeArtifact Text
dArtifactARN = lens _dArtifactARN (\s a -> s {_dArtifactARN = a})

instance AWSRequest DescribeArtifact where
  type Rs DescribeArtifact = DescribeArtifactResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeArtifactResponse'
            <$> (x .?> "MetadataProperties")
            <*> (x .?> "CreationTime")
            <*> (x .?> "ArtifactName")
            <*> (x .?> "ArtifactType")
            <*> (x .?> "ArtifactArn")
            <*> (x .?> "Source")
            <*> (x .?> "Properties" .!@ mempty)
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "CreatedBy")
            <*> (x .?> "LastModifiedBy")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeArtifact

instance NFData DescribeArtifact

instance ToHeaders DescribeArtifact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeArtifact" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeArtifact where
  toJSON DescribeArtifact' {..} =
    object
      (catMaybes [Just ("ArtifactArn" .= _dArtifactARN)])

instance ToPath DescribeArtifact where
  toPath = const "/"

instance ToQuery DescribeArtifact where
  toQuery = const mempty

-- | /See:/ 'describeArtifactResponse' smart constructor.
data DescribeArtifactResponse = DescribeArtifactResponse'
  { _dararsMetadataProperties ::
      !( Maybe
           MetadataProperties
       ),
    _dararsCreationTime ::
      !(Maybe POSIX),
    _dararsArtifactName ::
      !(Maybe Text),
    _dararsArtifactType ::
      !(Maybe Text),
    _dararsArtifactARN ::
      !(Maybe Text),
    _dararsSource ::
      !( Maybe
           ArtifactSource
       ),
    _dararsProperties ::
      !( Maybe
           (Map Text Text)
       ),
    _dararsLastModifiedTime ::
      !(Maybe POSIX),
    _dararsCreatedBy ::
      !(Maybe UserContext),
    _dararsLastModifiedBy ::
      !(Maybe UserContext),
    _dararsResponseStatus ::
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

-- | Creates a value of 'DescribeArtifactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dararsMetadataProperties' - Undocumented member.
--
-- * 'dararsCreationTime' - When the artifact was created.
--
-- * 'dararsArtifactName' - The name of the artifact.
--
-- * 'dararsArtifactType' - The type of the artifact.
--
-- * 'dararsArtifactARN' - The Amazon Resource Name (ARN) of the artifact.
--
-- * 'dararsSource' - The source of the artifact.
--
-- * 'dararsProperties' - A list of the artifact's properties.
--
-- * 'dararsLastModifiedTime' - When the artifact was last modified.
--
-- * 'dararsCreatedBy' - Undocumented member.
--
-- * 'dararsLastModifiedBy' - Undocumented member.
--
-- * 'dararsResponseStatus' - -- | The response status code.
describeArtifactResponse ::
  -- | 'dararsResponseStatus'
  Int ->
  DescribeArtifactResponse
describeArtifactResponse pResponseStatus_ =
  DescribeArtifactResponse'
    { _dararsMetadataProperties =
        Nothing,
      _dararsCreationTime = Nothing,
      _dararsArtifactName = Nothing,
      _dararsArtifactType = Nothing,
      _dararsArtifactARN = Nothing,
      _dararsSource = Nothing,
      _dararsProperties = Nothing,
      _dararsLastModifiedTime = Nothing,
      _dararsCreatedBy = Nothing,
      _dararsLastModifiedBy = Nothing,
      _dararsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dararsMetadataProperties :: Lens' DescribeArtifactResponse (Maybe MetadataProperties)
dararsMetadataProperties = lens _dararsMetadataProperties (\s a -> s {_dararsMetadataProperties = a})

-- | When the artifact was created.
dararsCreationTime :: Lens' DescribeArtifactResponse (Maybe UTCTime)
dararsCreationTime = lens _dararsCreationTime (\s a -> s {_dararsCreationTime = a}) . mapping _Time

-- | The name of the artifact.
dararsArtifactName :: Lens' DescribeArtifactResponse (Maybe Text)
dararsArtifactName = lens _dararsArtifactName (\s a -> s {_dararsArtifactName = a})

-- | The type of the artifact.
dararsArtifactType :: Lens' DescribeArtifactResponse (Maybe Text)
dararsArtifactType = lens _dararsArtifactType (\s a -> s {_dararsArtifactType = a})

-- | The Amazon Resource Name (ARN) of the artifact.
dararsArtifactARN :: Lens' DescribeArtifactResponse (Maybe Text)
dararsArtifactARN = lens _dararsArtifactARN (\s a -> s {_dararsArtifactARN = a})

-- | The source of the artifact.
dararsSource :: Lens' DescribeArtifactResponse (Maybe ArtifactSource)
dararsSource = lens _dararsSource (\s a -> s {_dararsSource = a})

-- | A list of the artifact's properties.
dararsProperties :: Lens' DescribeArtifactResponse (HashMap Text Text)
dararsProperties = lens _dararsProperties (\s a -> s {_dararsProperties = a}) . _Default . _Map

-- | When the artifact was last modified.
dararsLastModifiedTime :: Lens' DescribeArtifactResponse (Maybe UTCTime)
dararsLastModifiedTime = lens _dararsLastModifiedTime (\s a -> s {_dararsLastModifiedTime = a}) . mapping _Time

-- | Undocumented member.
dararsCreatedBy :: Lens' DescribeArtifactResponse (Maybe UserContext)
dararsCreatedBy = lens _dararsCreatedBy (\s a -> s {_dararsCreatedBy = a})

-- | Undocumented member.
dararsLastModifiedBy :: Lens' DescribeArtifactResponse (Maybe UserContext)
dararsLastModifiedBy = lens _dararsLastModifiedBy (\s a -> s {_dararsLastModifiedBy = a})

-- | -- | The response status code.
dararsResponseStatus :: Lens' DescribeArtifactResponse Int
dararsResponseStatus = lens _dararsResponseStatus (\s a -> s {_dararsResponseStatus = a})

instance NFData DescribeArtifactResponse
