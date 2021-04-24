{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ImageScanFindingsSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ImageScanFindingsSummary where

import Network.AWS.ECR.Types.FindingSeverity
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A summary of the last completed image scan.
--
--
--
-- /See:/ 'imageScanFindingsSummary' smart constructor.
data ImageScanFindingsSummary = ImageScanFindingsSummary'
  { _isfsImageScanCompletedAt ::
      !(Maybe POSIX),
    _isfsVulnerabilitySourceUpdatedAt ::
      !(Maybe POSIX),
    _isfsFindingSeverityCounts ::
      !( Maybe
           ( Map
               FindingSeverity
               Nat
           )
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ImageScanFindingsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isfsImageScanCompletedAt' - The time of the last completed image scan.
--
-- * 'isfsVulnerabilitySourceUpdatedAt' - The time when the vulnerability data was last scanned.
--
-- * 'isfsFindingSeverityCounts' - The image vulnerability counts, sorted by severity.
imageScanFindingsSummary ::
  ImageScanFindingsSummary
imageScanFindingsSummary =
  ImageScanFindingsSummary'
    { _isfsImageScanCompletedAt =
        Nothing,
      _isfsVulnerabilitySourceUpdatedAt = Nothing,
      _isfsFindingSeverityCounts = Nothing
    }

-- | The time of the last completed image scan.
isfsImageScanCompletedAt :: Lens' ImageScanFindingsSummary (Maybe UTCTime)
isfsImageScanCompletedAt = lens _isfsImageScanCompletedAt (\s a -> s {_isfsImageScanCompletedAt = a}) . mapping _Time

-- | The time when the vulnerability data was last scanned.
isfsVulnerabilitySourceUpdatedAt :: Lens' ImageScanFindingsSummary (Maybe UTCTime)
isfsVulnerabilitySourceUpdatedAt = lens _isfsVulnerabilitySourceUpdatedAt (\s a -> s {_isfsVulnerabilitySourceUpdatedAt = a}) . mapping _Time

-- | The image vulnerability counts, sorted by severity.
isfsFindingSeverityCounts :: Lens' ImageScanFindingsSummary (HashMap FindingSeverity Natural)
isfsFindingSeverityCounts = lens _isfsFindingSeverityCounts (\s a -> s {_isfsFindingSeverityCounts = a}) . _Default . _Map

instance FromJSON ImageScanFindingsSummary where
  parseJSON =
    withObject
      "ImageScanFindingsSummary"
      ( \x ->
          ImageScanFindingsSummary'
            <$> (x .:? "imageScanCompletedAt")
            <*> (x .:? "vulnerabilitySourceUpdatedAt")
            <*> (x .:? "findingSeverityCounts" .!= mempty)
      )

instance Hashable ImageScanFindingsSummary

instance NFData ImageScanFindingsSummary
