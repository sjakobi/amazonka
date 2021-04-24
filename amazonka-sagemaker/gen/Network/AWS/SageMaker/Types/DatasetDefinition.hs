{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DatasetDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DatasetDefinition where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.AthenaDatasetDefinition
import Network.AWS.SageMaker.Types.DataDistributionType
import Network.AWS.SageMaker.Types.InputMode
import Network.AWS.SageMaker.Types.RedshiftDatasetDefinition

-- | Configuration for Dataset Definition inputs. The Dataset Definition input must specify exactly one of either @AthenaDatasetDefinition@ or @RedshiftDatasetDefinition@ types.
--
--
--
-- /See:/ 'datasetDefinition' smart constructor.
data DatasetDefinition = DatasetDefinition'
  { _ddRedshiftDatasetDefinition ::
      !(Maybe RedshiftDatasetDefinition),
    _ddAthenaDatasetDefinition ::
      !(Maybe AthenaDatasetDefinition),
    _ddLocalPath :: !(Maybe Text),
    _ddInputMode :: !(Maybe InputMode),
    _ddDataDistributionType ::
      !(Maybe DataDistributionType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatasetDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddRedshiftDatasetDefinition' - Undocumented member.
--
-- * 'ddAthenaDatasetDefinition' - Undocumented member.
--
-- * 'ddLocalPath' - The local path where you want Amazon SageMaker to download the Dataset Definition inputs to run a processing job. @LocalPath@ is an absolute path to the input data. This is a required parameter when @AppManaged@ is @False@ (default).
--
-- * 'ddInputMode' - Whether to use @File@ or @Pipe@ input mode. In @File@ (default) mode, Amazon SageMaker copies the data from the input source onto the local Amazon Elastic Block Store (Amazon EBS) volumes before starting your training algorithm. This is the most commonly used input mode. In @Pipe@ mode, Amazon SageMaker streams input data from the source directly to your algorithm without using the EBS volume.
--
-- * 'ddDataDistributionType' - Whether the generated dataset is @FullyReplicated@ or @ShardedByS3Key@ (default).
datasetDefinition ::
  DatasetDefinition
datasetDefinition =
  DatasetDefinition'
    { _ddRedshiftDatasetDefinition =
        Nothing,
      _ddAthenaDatasetDefinition = Nothing,
      _ddLocalPath = Nothing,
      _ddInputMode = Nothing,
      _ddDataDistributionType = Nothing
    }

-- | Undocumented member.
ddRedshiftDatasetDefinition :: Lens' DatasetDefinition (Maybe RedshiftDatasetDefinition)
ddRedshiftDatasetDefinition = lens _ddRedshiftDatasetDefinition (\s a -> s {_ddRedshiftDatasetDefinition = a})

-- | Undocumented member.
ddAthenaDatasetDefinition :: Lens' DatasetDefinition (Maybe AthenaDatasetDefinition)
ddAthenaDatasetDefinition = lens _ddAthenaDatasetDefinition (\s a -> s {_ddAthenaDatasetDefinition = a})

-- | The local path where you want Amazon SageMaker to download the Dataset Definition inputs to run a processing job. @LocalPath@ is an absolute path to the input data. This is a required parameter when @AppManaged@ is @False@ (default).
ddLocalPath :: Lens' DatasetDefinition (Maybe Text)
ddLocalPath = lens _ddLocalPath (\s a -> s {_ddLocalPath = a})

-- | Whether to use @File@ or @Pipe@ input mode. In @File@ (default) mode, Amazon SageMaker copies the data from the input source onto the local Amazon Elastic Block Store (Amazon EBS) volumes before starting your training algorithm. This is the most commonly used input mode. In @Pipe@ mode, Amazon SageMaker streams input data from the source directly to your algorithm without using the EBS volume.
ddInputMode :: Lens' DatasetDefinition (Maybe InputMode)
ddInputMode = lens _ddInputMode (\s a -> s {_ddInputMode = a})

-- | Whether the generated dataset is @FullyReplicated@ or @ShardedByS3Key@ (default).
ddDataDistributionType :: Lens' DatasetDefinition (Maybe DataDistributionType)
ddDataDistributionType = lens _ddDataDistributionType (\s a -> s {_ddDataDistributionType = a})

instance FromJSON DatasetDefinition where
  parseJSON =
    withObject
      "DatasetDefinition"
      ( \x ->
          DatasetDefinition'
            <$> (x .:? "RedshiftDatasetDefinition")
            <*> (x .:? "AthenaDatasetDefinition")
            <*> (x .:? "LocalPath")
            <*> (x .:? "InputMode")
            <*> (x .:? "DataDistributionType")
      )

instance Hashable DatasetDefinition

instance NFData DatasetDefinition

instance ToJSON DatasetDefinition where
  toJSON DatasetDefinition' {..} =
    object
      ( catMaybes
          [ ("RedshiftDatasetDefinition" .=)
              <$> _ddRedshiftDatasetDefinition,
            ("AthenaDatasetDefinition" .=)
              <$> _ddAthenaDatasetDefinition,
            ("LocalPath" .=) <$> _ddLocalPath,
            ("InputMode" .=) <$> _ddInputMode,
            ("DataDistributionType" .=)
              <$> _ddDataDistributionType
          ]
      )
