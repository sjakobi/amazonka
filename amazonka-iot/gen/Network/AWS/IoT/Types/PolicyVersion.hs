{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.PolicyVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.PolicyVersion where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a policy version.
--
--
--
-- /See:/ 'policyVersion' smart constructor.
data PolicyVersion = PolicyVersion'
  { _pvCreateDate ::
      !(Maybe POSIX),
    _pvVersionId :: !(Maybe Text),
    _pvIsDefaultVersion :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicyVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvCreateDate' - The date and time the policy was created.
--
-- * 'pvVersionId' - The policy version ID.
--
-- * 'pvIsDefaultVersion' - Specifies whether the policy version is the default.
policyVersion ::
  PolicyVersion
policyVersion =
  PolicyVersion'
    { _pvCreateDate = Nothing,
      _pvVersionId = Nothing,
      _pvIsDefaultVersion = Nothing
    }

-- | The date and time the policy was created.
pvCreateDate :: Lens' PolicyVersion (Maybe UTCTime)
pvCreateDate = lens _pvCreateDate (\s a -> s {_pvCreateDate = a}) . mapping _Time

-- | The policy version ID.
pvVersionId :: Lens' PolicyVersion (Maybe Text)
pvVersionId = lens _pvVersionId (\s a -> s {_pvVersionId = a})

-- | Specifies whether the policy version is the default.
pvIsDefaultVersion :: Lens' PolicyVersion (Maybe Bool)
pvIsDefaultVersion = lens _pvIsDefaultVersion (\s a -> s {_pvIsDefaultVersion = a})

instance FromJSON PolicyVersion where
  parseJSON =
    withObject
      "PolicyVersion"
      ( \x ->
          PolicyVersion'
            <$> (x .:? "createDate")
            <*> (x .:? "versionId")
            <*> (x .:? "isDefaultVersion")
      )

instance Hashable PolicyVersion

instance NFData PolicyVersion
