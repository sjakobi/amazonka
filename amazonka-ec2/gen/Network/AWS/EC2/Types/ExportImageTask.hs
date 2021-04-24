{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ExportImageTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ExportImageTask where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ExportTaskS3Location
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an export image task.
--
--
--
-- /See:/ 'exportImageTask' smart constructor.
data ExportImageTask = ExportImageTask'
  { _eitStatusMessage ::
      !(Maybe Text),
    _eitStatus :: !(Maybe Text),
    _eitImageId :: !(Maybe Text),
    _eitTags :: !(Maybe [Tag]),
    _eitS3ExportLocation ::
      !(Maybe ExportTaskS3Location),
    _eitDescription :: !(Maybe Text),
    _eitExportImageTaskId :: !(Maybe Text),
    _eitProgress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportImageTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eitStatusMessage' - The status message for the export image task.
--
-- * 'eitStatus' - The status of the export image task. The possible values are @active@ , @completed@ , @deleting@ , and @deleted@ .
--
-- * 'eitImageId' - The ID of the image.
--
-- * 'eitTags' - Any tags assigned to the export image task.
--
-- * 'eitS3ExportLocation' - Information about the destination Amazon S3 bucket.
--
-- * 'eitDescription' - A description of the image being exported.
--
-- * 'eitExportImageTaskId' - The ID of the export image task.
--
-- * 'eitProgress' - The percent complete of the export image task.
exportImageTask ::
  ExportImageTask
exportImageTask =
  ExportImageTask'
    { _eitStatusMessage = Nothing,
      _eitStatus = Nothing,
      _eitImageId = Nothing,
      _eitTags = Nothing,
      _eitS3ExportLocation = Nothing,
      _eitDescription = Nothing,
      _eitExportImageTaskId = Nothing,
      _eitProgress = Nothing
    }

-- | The status message for the export image task.
eitStatusMessage :: Lens' ExportImageTask (Maybe Text)
eitStatusMessage = lens _eitStatusMessage (\s a -> s {_eitStatusMessage = a})

-- | The status of the export image task. The possible values are @active@ , @completed@ , @deleting@ , and @deleted@ .
eitStatus :: Lens' ExportImageTask (Maybe Text)
eitStatus = lens _eitStatus (\s a -> s {_eitStatus = a})

-- | The ID of the image.
eitImageId :: Lens' ExportImageTask (Maybe Text)
eitImageId = lens _eitImageId (\s a -> s {_eitImageId = a})

-- | Any tags assigned to the export image task.
eitTags :: Lens' ExportImageTask [Tag]
eitTags = lens _eitTags (\s a -> s {_eitTags = a}) . _Default . _Coerce

-- | Information about the destination Amazon S3 bucket.
eitS3ExportLocation :: Lens' ExportImageTask (Maybe ExportTaskS3Location)
eitS3ExportLocation = lens _eitS3ExportLocation (\s a -> s {_eitS3ExportLocation = a})

-- | A description of the image being exported.
eitDescription :: Lens' ExportImageTask (Maybe Text)
eitDescription = lens _eitDescription (\s a -> s {_eitDescription = a})

-- | The ID of the export image task.
eitExportImageTaskId :: Lens' ExportImageTask (Maybe Text)
eitExportImageTaskId = lens _eitExportImageTaskId (\s a -> s {_eitExportImageTaskId = a})

-- | The percent complete of the export image task.
eitProgress :: Lens' ExportImageTask (Maybe Text)
eitProgress = lens _eitProgress (\s a -> s {_eitProgress = a})

instance FromXML ExportImageTask where
  parseXML x =
    ExportImageTask'
      <$> (x .@? "statusMessage")
      <*> (x .@? "status")
      <*> (x .@? "imageId")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "s3ExportLocation")
      <*> (x .@? "description")
      <*> (x .@? "exportImageTaskId")
      <*> (x .@? "progress")

instance Hashable ExportImageTask

instance NFData ExportImageTask
