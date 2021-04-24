{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.InstanceInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.InstanceInfo where

import Network.AWS.CodeDeploy.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an on-premises instance.
--
--
--
-- /See:/ 'instanceInfo' smart constructor.
data InstanceInfo = InstanceInfo'
  { _iiRegisterTime ::
      !(Maybe POSIX),
    _iiIamUserARN :: !(Maybe Text),
    _iiInstanceName :: !(Maybe Text),
    _iiInstanceARN :: !(Maybe Text),
    _iiTags :: !(Maybe [Tag]),
    _iiIamSessionARN :: !(Maybe Text),
    _iiDeregisterTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiRegisterTime' - The time at which the on-premises instance was registered.
--
-- * 'iiIamUserARN' - The IAM user ARN associated with the on-premises instance.
--
-- * 'iiInstanceName' - The name of the on-premises instance.
--
-- * 'iiInstanceARN' - The ARN of the on-premises instance.
--
-- * 'iiTags' - The tags currently associated with the on-premises instance.
--
-- * 'iiIamSessionARN' - The ARN of the IAM session associated with the on-premises instance.
--
-- * 'iiDeregisterTime' - If the on-premises instance was deregistered, the time at which the on-premises instance was deregistered.
instanceInfo ::
  InstanceInfo
instanceInfo =
  InstanceInfo'
    { _iiRegisterTime = Nothing,
      _iiIamUserARN = Nothing,
      _iiInstanceName = Nothing,
      _iiInstanceARN = Nothing,
      _iiTags = Nothing,
      _iiIamSessionARN = Nothing,
      _iiDeregisterTime = Nothing
    }

-- | The time at which the on-premises instance was registered.
iiRegisterTime :: Lens' InstanceInfo (Maybe UTCTime)
iiRegisterTime = lens _iiRegisterTime (\s a -> s {_iiRegisterTime = a}) . mapping _Time

-- | The IAM user ARN associated with the on-premises instance.
iiIamUserARN :: Lens' InstanceInfo (Maybe Text)
iiIamUserARN = lens _iiIamUserARN (\s a -> s {_iiIamUserARN = a})

-- | The name of the on-premises instance.
iiInstanceName :: Lens' InstanceInfo (Maybe Text)
iiInstanceName = lens _iiInstanceName (\s a -> s {_iiInstanceName = a})

-- | The ARN of the on-premises instance.
iiInstanceARN :: Lens' InstanceInfo (Maybe Text)
iiInstanceARN = lens _iiInstanceARN (\s a -> s {_iiInstanceARN = a})

-- | The tags currently associated with the on-premises instance.
iiTags :: Lens' InstanceInfo [Tag]
iiTags = lens _iiTags (\s a -> s {_iiTags = a}) . _Default . _Coerce

-- | The ARN of the IAM session associated with the on-premises instance.
iiIamSessionARN :: Lens' InstanceInfo (Maybe Text)
iiIamSessionARN = lens _iiIamSessionARN (\s a -> s {_iiIamSessionARN = a})

-- | If the on-premises instance was deregistered, the time at which the on-premises instance was deregistered.
iiDeregisterTime :: Lens' InstanceInfo (Maybe UTCTime)
iiDeregisterTime = lens _iiDeregisterTime (\s a -> s {_iiDeregisterTime = a}) . mapping _Time

instance FromJSON InstanceInfo where
  parseJSON =
    withObject
      "InstanceInfo"
      ( \x ->
          InstanceInfo'
            <$> (x .:? "registerTime")
            <*> (x .:? "iamUserArn")
            <*> (x .:? "instanceName")
            <*> (x .:? "instanceArn")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "iamSessionArn")
            <*> (x .:? "deregisterTime")
      )

instance Hashable InstanceInfo

instance NFData InstanceInfo
