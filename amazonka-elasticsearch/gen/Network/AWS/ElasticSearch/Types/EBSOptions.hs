{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.EBSOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.EBSOptions where

import Network.AWS.ElasticSearch.Types.VolumeType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Options to enable, disable, and specify the properties of EBS storage volumes. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs Configuring EBS-based Storage> .
--
--
--
-- /See:/ 'ebsOptions' smart constructor.
data EBSOptions = EBSOptions'
  { _eoEBSEnabled ::
      !(Maybe Bool),
    _eoVolumeType :: !(Maybe VolumeType),
    _eoVolumeSize :: !(Maybe Int),
    _eoIOPS :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EBSOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eoEBSEnabled' - Specifies whether EBS-based storage is enabled.
--
-- * 'eoVolumeType' - Specifies the volume type for EBS-based storage.
--
-- * 'eoVolumeSize' - Integer to specify the size of an EBS volume.
--
-- * 'eoIOPS' - Specifies the IOPD for a Provisioned IOPS EBS volume (SSD).
ebsOptions ::
  EBSOptions
ebsOptions =
  EBSOptions'
    { _eoEBSEnabled = Nothing,
      _eoVolumeType = Nothing,
      _eoVolumeSize = Nothing,
      _eoIOPS = Nothing
    }

-- | Specifies whether EBS-based storage is enabled.
eoEBSEnabled :: Lens' EBSOptions (Maybe Bool)
eoEBSEnabled = lens _eoEBSEnabled (\s a -> s {_eoEBSEnabled = a})

-- | Specifies the volume type for EBS-based storage.
eoVolumeType :: Lens' EBSOptions (Maybe VolumeType)
eoVolumeType = lens _eoVolumeType (\s a -> s {_eoVolumeType = a})

-- | Integer to specify the size of an EBS volume.
eoVolumeSize :: Lens' EBSOptions (Maybe Int)
eoVolumeSize = lens _eoVolumeSize (\s a -> s {_eoVolumeSize = a})

-- | Specifies the IOPD for a Provisioned IOPS EBS volume (SSD).
eoIOPS :: Lens' EBSOptions (Maybe Int)
eoIOPS = lens _eoIOPS (\s a -> s {_eoIOPS = a})

instance FromJSON EBSOptions where
  parseJSON =
    withObject
      "EBSOptions"
      ( \x ->
          EBSOptions'
            <$> (x .:? "EBSEnabled")
            <*> (x .:? "VolumeType")
            <*> (x .:? "VolumeSize")
            <*> (x .:? "Iops")
      )

instance Hashable EBSOptions

instance NFData EBSOptions

instance ToJSON EBSOptions where
  toJSON EBSOptions' {..} =
    object
      ( catMaybes
          [ ("EBSEnabled" .=) <$> _eoEBSEnabled,
            ("VolumeType" .=) <$> _eoVolumeType,
            ("VolumeSize" .=) <$> _eoVolumeSize,
            ("Iops" .=) <$> _eoIOPS
          ]
      )
