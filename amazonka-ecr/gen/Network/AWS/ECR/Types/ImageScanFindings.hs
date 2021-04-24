{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ImageScanFindings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ImageScanFindings where

import Network.AWS.ECR.Types.FindingSeverity
import Network.AWS.ECR.Types.ImageScanFinding
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The details of an image scan.
--
--
--
-- /See:/ 'imageScanFindings' smart constructor.
data ImageScanFindings = ImageScanFindings'
  { _isfFindings ::
      !(Maybe [ImageScanFinding]),
    _isfImageScanCompletedAt ::
      !(Maybe POSIX),
    _isfVulnerabilitySourceUpdatedAt ::
      !(Maybe POSIX),
    _isfFindingSeverityCounts ::
      !(Maybe (Map FindingSeverity Nat))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageScanFindings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isfFindings' - The findings from the image scan.
--
-- * 'isfImageScanCompletedAt' - The time of the last completed image scan.
--
-- * 'isfVulnerabilitySourceUpdatedAt' - The time when the vulnerability data was last scanned.
--
-- * 'isfFindingSeverityCounts' - The image vulnerability counts, sorted by severity.
imageScanFindings ::
  ImageScanFindings
imageScanFindings =
  ImageScanFindings'
    { _isfFindings = Nothing,
      _isfImageScanCompletedAt = Nothing,
      _isfVulnerabilitySourceUpdatedAt = Nothing,
      _isfFindingSeverityCounts = Nothing
    }

-- | The findings from the image scan.
isfFindings :: Lens' ImageScanFindings [ImageScanFinding]
isfFindings = lens _isfFindings (\s a -> s {_isfFindings = a}) . _Default . _Coerce

-- | The time of the last completed image scan.
isfImageScanCompletedAt :: Lens' ImageScanFindings (Maybe UTCTime)
isfImageScanCompletedAt = lens _isfImageScanCompletedAt (\s a -> s {_isfImageScanCompletedAt = a}) . mapping _Time

-- | The time when the vulnerability data was last scanned.
isfVulnerabilitySourceUpdatedAt :: Lens' ImageScanFindings (Maybe UTCTime)
isfVulnerabilitySourceUpdatedAt = lens _isfVulnerabilitySourceUpdatedAt (\s a -> s {_isfVulnerabilitySourceUpdatedAt = a}) . mapping _Time

-- | The image vulnerability counts, sorted by severity.
isfFindingSeverityCounts :: Lens' ImageScanFindings (HashMap FindingSeverity Natural)
isfFindingSeverityCounts = lens _isfFindingSeverityCounts (\s a -> s {_isfFindingSeverityCounts = a}) . _Default . _Map

instance FromJSON ImageScanFindings where
  parseJSON =
    withObject
      "ImageScanFindings"
      ( \x ->
          ImageScanFindings'
            <$> (x .:? "findings" .!= mempty)
            <*> (x .:? "imageScanCompletedAt")
            <*> (x .:? "vulnerabilitySourceUpdatedAt")
            <*> (x .:? "findingSeverityCounts" .!= mempty)
      )

instance Hashable ImageScanFindings

instance NFData ImageScanFindings
