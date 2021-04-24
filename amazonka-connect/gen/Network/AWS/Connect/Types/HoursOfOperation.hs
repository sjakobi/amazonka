{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.HoursOfOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.HoursOfOperation where

import Network.AWS.Connect.Types.HoursOfOperationConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about of the hours of operation.
--
--
--
-- /See:/ 'hoursOfOperation' smart constructor.
data HoursOfOperation = HoursOfOperation'
  { _hooConfig ::
      !(Maybe [HoursOfOperationConfig]),
    _hooHoursOfOperationARN ::
      !(Maybe Text),
    _hooName :: !(Maybe Text),
    _hooTags :: !(Maybe (Map Text Text)),
    _hooDescription :: !(Maybe Text),
    _hooTimeZone :: !(Maybe Text),
    _hooHoursOfOperationId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HoursOfOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hooConfig' - Configuration information for the hours of operation.
--
-- * 'hooHoursOfOperationARN' - The Amazon Resource Name (ARN) for the hours of operation.
--
-- * 'hooName' - The name for the hours of operation.
--
-- * 'hooTags' - One or more tags.
--
-- * 'hooDescription' - The description for the hours of operation.
--
-- * 'hooTimeZone' - The time zone for the hours of operation.
--
-- * 'hooHoursOfOperationId' - The identifier for the hours of operation.
hoursOfOperation ::
  HoursOfOperation
hoursOfOperation =
  HoursOfOperation'
    { _hooConfig = Nothing,
      _hooHoursOfOperationARN = Nothing,
      _hooName = Nothing,
      _hooTags = Nothing,
      _hooDescription = Nothing,
      _hooTimeZone = Nothing,
      _hooHoursOfOperationId = Nothing
    }

-- | Configuration information for the hours of operation.
hooConfig :: Lens' HoursOfOperation [HoursOfOperationConfig]
hooConfig = lens _hooConfig (\s a -> s {_hooConfig = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) for the hours of operation.
hooHoursOfOperationARN :: Lens' HoursOfOperation (Maybe Text)
hooHoursOfOperationARN = lens _hooHoursOfOperationARN (\s a -> s {_hooHoursOfOperationARN = a})

-- | The name for the hours of operation.
hooName :: Lens' HoursOfOperation (Maybe Text)
hooName = lens _hooName (\s a -> s {_hooName = a})

-- | One or more tags.
hooTags :: Lens' HoursOfOperation (HashMap Text Text)
hooTags = lens _hooTags (\s a -> s {_hooTags = a}) . _Default . _Map

-- | The description for the hours of operation.
hooDescription :: Lens' HoursOfOperation (Maybe Text)
hooDescription = lens _hooDescription (\s a -> s {_hooDescription = a})

-- | The time zone for the hours of operation.
hooTimeZone :: Lens' HoursOfOperation (Maybe Text)
hooTimeZone = lens _hooTimeZone (\s a -> s {_hooTimeZone = a})

-- | The identifier for the hours of operation.
hooHoursOfOperationId :: Lens' HoursOfOperation (Maybe Text)
hooHoursOfOperationId = lens _hooHoursOfOperationId (\s a -> s {_hooHoursOfOperationId = a})

instance FromJSON HoursOfOperation where
  parseJSON =
    withObject
      "HoursOfOperation"
      ( \x ->
          HoursOfOperation'
            <$> (x .:? "Config" .!= mempty)
            <*> (x .:? "HoursOfOperationArn")
            <*> (x .:? "Name")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "TimeZone")
            <*> (x .:? "HoursOfOperationId")
      )

instance Hashable HoursOfOperation

instance NFData HoursOfOperation
