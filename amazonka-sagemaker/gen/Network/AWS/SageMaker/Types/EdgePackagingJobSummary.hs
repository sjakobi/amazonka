{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EdgePackagingJobSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EdgePackagingJobSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.EdgePackagingJobStatus

-- | Summary of edge packaging job.
--
--
--
-- /See:/ 'edgePackagingJobSummary' smart constructor.
data EdgePackagingJobSummary = EdgePackagingJobSummary'
  { _epjsCreationTime ::
      !(Maybe POSIX),
    _epjsCompilationJobName ::
      !(Maybe Text),
    _epjsModelVersion ::
      !(Maybe Text),
    _epjsLastModifiedTime ::
      !(Maybe POSIX),
    _epjsModelName ::
      !(Maybe Text),
    _epjsEdgePackagingJobARN ::
      !Text,
    _epjsEdgePackagingJobName ::
      !Text,
    _epjsEdgePackagingJobStatus ::
      !EdgePackagingJobStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'EdgePackagingJobSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epjsCreationTime' - The timestamp of when the job was created.
--
-- * 'epjsCompilationJobName' - The name of the SageMaker Neo compilation job.
--
-- * 'epjsModelVersion' - The version of the model.
--
-- * 'epjsLastModifiedTime' - The timestamp of when the edge packaging job was last updated.
--
-- * 'epjsModelName' - The name of the model.
--
-- * 'epjsEdgePackagingJobARN' - The Amazon Resource Name (ARN) of the edge packaging job.
--
-- * 'epjsEdgePackagingJobName' - The name of the edge packaging job.
--
-- * 'epjsEdgePackagingJobStatus' - The status of the edge packaging job.
edgePackagingJobSummary ::
  -- | 'epjsEdgePackagingJobARN'
  Text ->
  -- | 'epjsEdgePackagingJobName'
  Text ->
  -- | 'epjsEdgePackagingJobStatus'
  EdgePackagingJobStatus ->
  EdgePackagingJobSummary
edgePackagingJobSummary
  pEdgePackagingJobARN_
  pEdgePackagingJobName_
  pEdgePackagingJobStatus_ =
    EdgePackagingJobSummary'
      { _epjsCreationTime =
          Nothing,
        _epjsCompilationJobName = Nothing,
        _epjsModelVersion = Nothing,
        _epjsLastModifiedTime = Nothing,
        _epjsModelName = Nothing,
        _epjsEdgePackagingJobARN = pEdgePackagingJobARN_,
        _epjsEdgePackagingJobName = pEdgePackagingJobName_,
        _epjsEdgePackagingJobStatus =
          pEdgePackagingJobStatus_
      }

-- | The timestamp of when the job was created.
epjsCreationTime :: Lens' EdgePackagingJobSummary (Maybe UTCTime)
epjsCreationTime = lens _epjsCreationTime (\s a -> s {_epjsCreationTime = a}) . mapping _Time

-- | The name of the SageMaker Neo compilation job.
epjsCompilationJobName :: Lens' EdgePackagingJobSummary (Maybe Text)
epjsCompilationJobName = lens _epjsCompilationJobName (\s a -> s {_epjsCompilationJobName = a})

-- | The version of the model.
epjsModelVersion :: Lens' EdgePackagingJobSummary (Maybe Text)
epjsModelVersion = lens _epjsModelVersion (\s a -> s {_epjsModelVersion = a})

-- | The timestamp of when the edge packaging job was last updated.
epjsLastModifiedTime :: Lens' EdgePackagingJobSummary (Maybe UTCTime)
epjsLastModifiedTime = lens _epjsLastModifiedTime (\s a -> s {_epjsLastModifiedTime = a}) . mapping _Time

-- | The name of the model.
epjsModelName :: Lens' EdgePackagingJobSummary (Maybe Text)
epjsModelName = lens _epjsModelName (\s a -> s {_epjsModelName = a})

-- | The Amazon Resource Name (ARN) of the edge packaging job.
epjsEdgePackagingJobARN :: Lens' EdgePackagingJobSummary Text
epjsEdgePackagingJobARN = lens _epjsEdgePackagingJobARN (\s a -> s {_epjsEdgePackagingJobARN = a})

-- | The name of the edge packaging job.
epjsEdgePackagingJobName :: Lens' EdgePackagingJobSummary Text
epjsEdgePackagingJobName = lens _epjsEdgePackagingJobName (\s a -> s {_epjsEdgePackagingJobName = a})

-- | The status of the edge packaging job.
epjsEdgePackagingJobStatus :: Lens' EdgePackagingJobSummary EdgePackagingJobStatus
epjsEdgePackagingJobStatus = lens _epjsEdgePackagingJobStatus (\s a -> s {_epjsEdgePackagingJobStatus = a})

instance FromJSON EdgePackagingJobSummary where
  parseJSON =
    withObject
      "EdgePackagingJobSummary"
      ( \x ->
          EdgePackagingJobSummary'
            <$> (x .:? "CreationTime")
            <*> (x .:? "CompilationJobName")
            <*> (x .:? "ModelVersion")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "ModelName")
            <*> (x .: "EdgePackagingJobArn")
            <*> (x .: "EdgePackagingJobName")
            <*> (x .: "EdgePackagingJobStatus")
      )

instance Hashable EdgePackagingJobSummary

instance NFData EdgePackagingJobSummary
