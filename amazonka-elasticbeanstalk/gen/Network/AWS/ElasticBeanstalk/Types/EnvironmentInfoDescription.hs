{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoDescription where

import Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The information retrieved from the Amazon EC2 instances.
--
--
--
-- /See:/ 'environmentInfoDescription' smart constructor.
data EnvironmentInfoDescription = EnvironmentInfoDescription'
  { _eidMessage ::
      !(Maybe Text),
    _eidInfoType ::
      !( Maybe
           EnvironmentInfoType
       ),
    _eidEC2InstanceId ::
      !(Maybe Text),
    _eidSampleTimestamp ::
      !(Maybe ISO8601)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'EnvironmentInfoDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eidMessage' - The retrieved information. Currently contains a presigned Amazon S3 URL. The files are deleted after 15 minutes. Anyone in possession of this URL can access the files before they are deleted. Make the URL available only to trusted parties.
--
-- * 'eidInfoType' - The type of information retrieved.
--
-- * 'eidEC2InstanceId' - The Amazon EC2 Instance ID for this information.
--
-- * 'eidSampleTimestamp' - The time stamp when this information was retrieved.
environmentInfoDescription ::
  EnvironmentInfoDescription
environmentInfoDescription =
  EnvironmentInfoDescription'
    { _eidMessage = Nothing,
      _eidInfoType = Nothing,
      _eidEC2InstanceId = Nothing,
      _eidSampleTimestamp = Nothing
    }

-- | The retrieved information. Currently contains a presigned Amazon S3 URL. The files are deleted after 15 minutes. Anyone in possession of this URL can access the files before they are deleted. Make the URL available only to trusted parties.
eidMessage :: Lens' EnvironmentInfoDescription (Maybe Text)
eidMessage = lens _eidMessage (\s a -> s {_eidMessage = a})

-- | The type of information retrieved.
eidInfoType :: Lens' EnvironmentInfoDescription (Maybe EnvironmentInfoType)
eidInfoType = lens _eidInfoType (\s a -> s {_eidInfoType = a})

-- | The Amazon EC2 Instance ID for this information.
eidEC2InstanceId :: Lens' EnvironmentInfoDescription (Maybe Text)
eidEC2InstanceId = lens _eidEC2InstanceId (\s a -> s {_eidEC2InstanceId = a})

-- | The time stamp when this information was retrieved.
eidSampleTimestamp :: Lens' EnvironmentInfoDescription (Maybe UTCTime)
eidSampleTimestamp = lens _eidSampleTimestamp (\s a -> s {_eidSampleTimestamp = a}) . mapping _Time

instance FromXML EnvironmentInfoDescription where
  parseXML x =
    EnvironmentInfoDescription'
      <$> (x .@? "Message")
      <*> (x .@? "InfoType")
      <*> (x .@? "Ec2InstanceId")
      <*> (x .@? "SampleTimestamp")

instance Hashable EnvironmentInfoDescription

instance NFData EnvironmentInfoDescription
