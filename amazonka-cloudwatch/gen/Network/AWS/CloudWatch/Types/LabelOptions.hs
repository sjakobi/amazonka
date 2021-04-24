{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.LabelOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.LabelOptions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | This structure includes the @Timezone@ parameter, which you can use to specify your time zone so that the labels that are associated with returned metrics display the correct time for your time zone.
--
--
-- The @Timezone@ value affects a label only if you have a time-based dynamic expression in the label. For more information about dynamic expressions in labels, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html Using Dynamic Labels> .
--
--
-- /See:/ 'labelOptions' smart constructor.
newtype LabelOptions = LabelOptions'
  { _loTimezone ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LabelOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loTimezone' - The time zone to use for metric data return in this operation. The format is @+@ or @-@ followed by four digits. The first two digits indicate the number of hours ahead or behind of UTC, and the final two digits are the number of minutes. For example, +0130 indicates a time zone that is 1 hour and 30 minutes ahead of UTC. The default is +0000.
labelOptions ::
  LabelOptions
labelOptions = LabelOptions' {_loTimezone = Nothing}

-- | The time zone to use for metric data return in this operation. The format is @+@ or @-@ followed by four digits. The first two digits indicate the number of hours ahead or behind of UTC, and the final two digits are the number of minutes. For example, +0130 indicates a time zone that is 1 hour and 30 minutes ahead of UTC. The default is +0000.
loTimezone :: Lens' LabelOptions (Maybe Text)
loTimezone = lens _loTimezone (\s a -> s {_loTimezone = a})

instance Hashable LabelOptions

instance NFData LabelOptions

instance ToQuery LabelOptions where
  toQuery LabelOptions' {..} =
    mconcat ["Timezone" =: _loTimezone]
