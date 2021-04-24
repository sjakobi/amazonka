{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceStatusEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceStatusEvent where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.EventCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a scheduled event for an instance.
--
--
--
-- /See:/ 'instanceStatusEvent' smart constructor.
data InstanceStatusEvent = InstanceStatusEvent'
  { _iseNotBefore ::
      !(Maybe ISO8601),
    _iseInstanceEventId ::
      !(Maybe Text),
    _iseCode :: !(Maybe EventCode),
    _iseNotAfter ::
      !(Maybe ISO8601),
    _iseNotBeforeDeadline ::
      !(Maybe ISO8601),
    _iseDescription ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceStatusEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iseNotBefore' - The earliest scheduled start time for the event.
--
-- * 'iseInstanceEventId' - The ID of the event.
--
-- * 'iseCode' - The event code.
--
-- * 'iseNotAfter' - The latest scheduled end time for the event.
--
-- * 'iseNotBeforeDeadline' - The deadline for starting the event.
--
-- * 'iseDescription' - A description of the event. After a scheduled event is completed, it can still be described for up to a week. If the event has been completed, this description starts with the following text: [Completed].
instanceStatusEvent ::
  InstanceStatusEvent
instanceStatusEvent =
  InstanceStatusEvent'
    { _iseNotBefore = Nothing,
      _iseInstanceEventId = Nothing,
      _iseCode = Nothing,
      _iseNotAfter = Nothing,
      _iseNotBeforeDeadline = Nothing,
      _iseDescription = Nothing
    }

-- | The earliest scheduled start time for the event.
iseNotBefore :: Lens' InstanceStatusEvent (Maybe UTCTime)
iseNotBefore = lens _iseNotBefore (\s a -> s {_iseNotBefore = a}) . mapping _Time

-- | The ID of the event.
iseInstanceEventId :: Lens' InstanceStatusEvent (Maybe Text)
iseInstanceEventId = lens _iseInstanceEventId (\s a -> s {_iseInstanceEventId = a})

-- | The event code.
iseCode :: Lens' InstanceStatusEvent (Maybe EventCode)
iseCode = lens _iseCode (\s a -> s {_iseCode = a})

-- | The latest scheduled end time for the event.
iseNotAfter :: Lens' InstanceStatusEvent (Maybe UTCTime)
iseNotAfter = lens _iseNotAfter (\s a -> s {_iseNotAfter = a}) . mapping _Time

-- | The deadline for starting the event.
iseNotBeforeDeadline :: Lens' InstanceStatusEvent (Maybe UTCTime)
iseNotBeforeDeadline = lens _iseNotBeforeDeadline (\s a -> s {_iseNotBeforeDeadline = a}) . mapping _Time

-- | A description of the event. After a scheduled event is completed, it can still be described for up to a week. If the event has been completed, this description starts with the following text: [Completed].
iseDescription :: Lens' InstanceStatusEvent (Maybe Text)
iseDescription = lens _iseDescription (\s a -> s {_iseDescription = a})

instance FromXML InstanceStatusEvent where
  parseXML x =
    InstanceStatusEvent'
      <$> (x .@? "notBefore")
      <*> (x .@? "instanceEventId")
      <*> (x .@? "code")
      <*> (x .@? "notAfter")
      <*> (x .@? "notBeforeDeadline")
      <*> (x .@? "description")

instance Hashable InstanceStatusEvent

instance NFData InstanceStatusEvent
