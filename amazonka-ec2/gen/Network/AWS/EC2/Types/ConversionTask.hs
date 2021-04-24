{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ConversionTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ConversionTask where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ConversionTaskState
import Network.AWS.EC2.Types.ImportInstanceTaskDetails
import Network.AWS.EC2.Types.ImportVolumeTaskDetails
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a conversion task.
--
--
--
-- /See:/ 'conversionTask' smart constructor.
data ConversionTask = ConversionTask'
  { _ctStatusMessage ::
      !(Maybe Text),
    _ctImportInstance ::
      !(Maybe ImportInstanceTaskDetails),
    _ctExpirationTime :: !(Maybe Text),
    _ctImportVolume ::
      !(Maybe ImportVolumeTaskDetails),
    _ctState :: !(Maybe ConversionTaskState),
    _ctTags :: !(Maybe [Tag]),
    _ctConversionTaskId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConversionTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctStatusMessage' - The status message related to the conversion task.
--
-- * 'ctImportInstance' - If the task is for importing an instance, this contains information about the import instance task.
--
-- * 'ctExpirationTime' - The time when the task expires. If the upload isn't complete before the expiration time, we automatically cancel the task.
--
-- * 'ctImportVolume' - If the task is for importing a volume, this contains information about the import volume task.
--
-- * 'ctState' - The state of the conversion task.
--
-- * 'ctTags' - Any tags assigned to the task.
--
-- * 'ctConversionTaskId' - The ID of the conversion task.
conversionTask ::
  ConversionTask
conversionTask =
  ConversionTask'
    { _ctStatusMessage = Nothing,
      _ctImportInstance = Nothing,
      _ctExpirationTime = Nothing,
      _ctImportVolume = Nothing,
      _ctState = Nothing,
      _ctTags = Nothing,
      _ctConversionTaskId = Nothing
    }

-- | The status message related to the conversion task.
ctStatusMessage :: Lens' ConversionTask (Maybe Text)
ctStatusMessage = lens _ctStatusMessage (\s a -> s {_ctStatusMessage = a})

-- | If the task is for importing an instance, this contains information about the import instance task.
ctImportInstance :: Lens' ConversionTask (Maybe ImportInstanceTaskDetails)
ctImportInstance = lens _ctImportInstance (\s a -> s {_ctImportInstance = a})

-- | The time when the task expires. If the upload isn't complete before the expiration time, we automatically cancel the task.
ctExpirationTime :: Lens' ConversionTask (Maybe Text)
ctExpirationTime = lens _ctExpirationTime (\s a -> s {_ctExpirationTime = a})

-- | If the task is for importing a volume, this contains information about the import volume task.
ctImportVolume :: Lens' ConversionTask (Maybe ImportVolumeTaskDetails)
ctImportVolume = lens _ctImportVolume (\s a -> s {_ctImportVolume = a})

-- | The state of the conversion task.
ctState :: Lens' ConversionTask (Maybe ConversionTaskState)
ctState = lens _ctState (\s a -> s {_ctState = a})

-- | Any tags assigned to the task.
ctTags :: Lens' ConversionTask [Tag]
ctTags = lens _ctTags (\s a -> s {_ctTags = a}) . _Default . _Coerce

-- | The ID of the conversion task.
ctConversionTaskId :: Lens' ConversionTask (Maybe Text)
ctConversionTaskId = lens _ctConversionTaskId (\s a -> s {_ctConversionTaskId = a})

instance FromXML ConversionTask where
  parseXML x =
    ConversionTask'
      <$> (x .@? "statusMessage")
      <*> (x .@? "importInstance")
      <*> (x .@? "expirationTime")
      <*> (x .@? "importVolume")
      <*> (x .@? "state")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "conversionTaskId")

instance Hashable ConversionTask

instance NFData ConversionTask
