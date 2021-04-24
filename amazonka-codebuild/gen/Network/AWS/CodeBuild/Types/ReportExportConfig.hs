{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ReportExportConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportExportConfig where

import Network.AWS.CodeBuild.Types.ReportExportConfigType
import Network.AWS.CodeBuild.Types.S3ReportExportConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the location where the run of a report is exported.
--
--
--
-- /See:/ 'reportExportConfig' smart constructor.
data ReportExportConfig = ReportExportConfig'
  { _recS3Destination ::
      !(Maybe S3ReportExportConfig),
    _recExportConfigType ::
      !(Maybe ReportExportConfigType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReportExportConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'recS3Destination' - A @S3ReportExportConfig@ object that contains information about the S3 bucket where the run of a report is exported.
--
-- * 'recExportConfigType' - The export configuration type. Valid values are:      * @S3@ : The report results are exported to an S3 bucket.      * @NO_EXPORT@ : The report results are not exported.
reportExportConfig ::
  ReportExportConfig
reportExportConfig =
  ReportExportConfig'
    { _recS3Destination = Nothing,
      _recExportConfigType = Nothing
    }

-- | A @S3ReportExportConfig@ object that contains information about the S3 bucket where the run of a report is exported.
recS3Destination :: Lens' ReportExportConfig (Maybe S3ReportExportConfig)
recS3Destination = lens _recS3Destination (\s a -> s {_recS3Destination = a})

-- | The export configuration type. Valid values are:      * @S3@ : The report results are exported to an S3 bucket.      * @NO_EXPORT@ : The report results are not exported.
recExportConfigType :: Lens' ReportExportConfig (Maybe ReportExportConfigType)
recExportConfigType = lens _recExportConfigType (\s a -> s {_recExportConfigType = a})

instance FromJSON ReportExportConfig where
  parseJSON =
    withObject
      "ReportExportConfig"
      ( \x ->
          ReportExportConfig'
            <$> (x .:? "s3Destination")
            <*> (x .:? "exportConfigType")
      )

instance Hashable ReportExportConfig

instance NFData ReportExportConfig

instance ToJSON ReportExportConfig where
  toJSON ReportExportConfig' {..} =
    object
      ( catMaybes
          [ ("s3Destination" .=) <$> _recS3Destination,
            ("exportConfigType" .=) <$> _recExportConfigType
          ]
      )
