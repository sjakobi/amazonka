{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Pipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Pipeline where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.PipelineStatus
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.UserContext

-- | A SageMaker Model Building Pipeline instance.
--
--
--
-- /See:/ 'pipeline' smart constructor.
data Pipeline = Pipeline'
  { _pipPipelineARN ::
      !(Maybe Text),
    _pipPipelineDescription :: !(Maybe Text),
    _pipCreationTime :: !(Maybe POSIX),
    _pipRoleARN :: !(Maybe Text),
    _pipLastRunTime :: !(Maybe POSIX),
    _pipPipelineDisplayName :: !(Maybe Text),
    _pipTags :: !(Maybe [Tag]),
    _pipLastModifiedTime :: !(Maybe POSIX),
    _pipPipelineStatus :: !(Maybe PipelineStatus),
    _pipCreatedBy :: !(Maybe UserContext),
    _pipLastModifiedBy :: !(Maybe UserContext),
    _pipPipelineName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Pipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pipPipelineARN' - The Amazon Resource Name (ARN) of the pipeline.
--
-- * 'pipPipelineDescription' - The description of the pipeline.
--
-- * 'pipCreationTime' - The creation time of the pipeline.
--
-- * 'pipRoleARN' - The Amazon Resource Name (ARN) of the role that created the pipeline.
--
-- * 'pipLastRunTime' - The time when the pipeline was last run.
--
-- * 'pipPipelineDisplayName' - The display name of the pipeline.
--
-- * 'pipTags' - A list of tags that apply to the pipeline.
--
-- * 'pipLastModifiedTime' - The time that the pipeline was last modified.
--
-- * 'pipPipelineStatus' - The status of the pipeline.
--
-- * 'pipCreatedBy' - Undocumented member.
--
-- * 'pipLastModifiedBy' - Undocumented member.
--
-- * 'pipPipelineName' - The name of the pipeline.
pipeline ::
  Pipeline
pipeline =
  Pipeline'
    { _pipPipelineARN = Nothing,
      _pipPipelineDescription = Nothing,
      _pipCreationTime = Nothing,
      _pipRoleARN = Nothing,
      _pipLastRunTime = Nothing,
      _pipPipelineDisplayName = Nothing,
      _pipTags = Nothing,
      _pipLastModifiedTime = Nothing,
      _pipPipelineStatus = Nothing,
      _pipCreatedBy = Nothing,
      _pipLastModifiedBy = Nothing,
      _pipPipelineName = Nothing
    }

-- | The Amazon Resource Name (ARN) of the pipeline.
pipPipelineARN :: Lens' Pipeline (Maybe Text)
pipPipelineARN = lens _pipPipelineARN (\s a -> s {_pipPipelineARN = a})

-- | The description of the pipeline.
pipPipelineDescription :: Lens' Pipeline (Maybe Text)
pipPipelineDescription = lens _pipPipelineDescription (\s a -> s {_pipPipelineDescription = a})

-- | The creation time of the pipeline.
pipCreationTime :: Lens' Pipeline (Maybe UTCTime)
pipCreationTime = lens _pipCreationTime (\s a -> s {_pipCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the role that created the pipeline.
pipRoleARN :: Lens' Pipeline (Maybe Text)
pipRoleARN = lens _pipRoleARN (\s a -> s {_pipRoleARN = a})

-- | The time when the pipeline was last run.
pipLastRunTime :: Lens' Pipeline (Maybe UTCTime)
pipLastRunTime = lens _pipLastRunTime (\s a -> s {_pipLastRunTime = a}) . mapping _Time

-- | The display name of the pipeline.
pipPipelineDisplayName :: Lens' Pipeline (Maybe Text)
pipPipelineDisplayName = lens _pipPipelineDisplayName (\s a -> s {_pipPipelineDisplayName = a})

-- | A list of tags that apply to the pipeline.
pipTags :: Lens' Pipeline [Tag]
pipTags = lens _pipTags (\s a -> s {_pipTags = a}) . _Default . _Coerce

-- | The time that the pipeline was last modified.
pipLastModifiedTime :: Lens' Pipeline (Maybe UTCTime)
pipLastModifiedTime = lens _pipLastModifiedTime (\s a -> s {_pipLastModifiedTime = a}) . mapping _Time

-- | The status of the pipeline.
pipPipelineStatus :: Lens' Pipeline (Maybe PipelineStatus)
pipPipelineStatus = lens _pipPipelineStatus (\s a -> s {_pipPipelineStatus = a})

-- | Undocumented member.
pipCreatedBy :: Lens' Pipeline (Maybe UserContext)
pipCreatedBy = lens _pipCreatedBy (\s a -> s {_pipCreatedBy = a})

-- | Undocumented member.
pipLastModifiedBy :: Lens' Pipeline (Maybe UserContext)
pipLastModifiedBy = lens _pipLastModifiedBy (\s a -> s {_pipLastModifiedBy = a})

-- | The name of the pipeline.
pipPipelineName :: Lens' Pipeline (Maybe Text)
pipPipelineName = lens _pipPipelineName (\s a -> s {_pipPipelineName = a})

instance FromJSON Pipeline where
  parseJSON =
    withObject
      "Pipeline"
      ( \x ->
          Pipeline'
            <$> (x .:? "PipelineArn")
            <*> (x .:? "PipelineDescription")
            <*> (x .:? "CreationTime")
            <*> (x .:? "RoleArn")
            <*> (x .:? "LastRunTime")
            <*> (x .:? "PipelineDisplayName")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "PipelineStatus")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "LastModifiedBy")
            <*> (x .:? "PipelineName")
      )

instance Hashable Pipeline

instance NFData Pipeline
