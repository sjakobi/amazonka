{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.PutEventsRequestEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.PutEventsRequestEntry where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents an event to be submitted.
--
--
--
-- /See:/ 'putEventsRequestEntry' smart constructor.
data PutEventsRequestEntry = PutEventsRequestEntry'
  { _pereDetailType ::
      !(Maybe Text),
    _pereSource ::
      !(Maybe Text),
    _pereEventBusName ::
      !(Maybe Text),
    _pereDetail ::
      !(Maybe Text),
    _pereResources ::
      !(Maybe [Text]),
    _pereTraceHeader ::
      !(Maybe Text),
    _pereTime :: !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutEventsRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pereDetailType' - Free-form string used to decide what fields to expect in the event detail.
--
-- * 'pereSource' - The source of the event.
--
-- * 'pereEventBusName' - The name or ARN of the event bus to receive the event. Only the rules that are associated with this event bus are used to match the event. If you omit this, the default event bus is used.
--
-- * 'pereDetail' - A valid JSON string. There is no other schema imposed. The JSON string may contain fields and nested subobjects.
--
-- * 'pereResources' - AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.
--
-- * 'pereTraceHeader' - An AWS X-Ray trade header, which is an http header (X-Amzn-Trace-Id) that contains the trace-id associated with the event. To learn more about X-Ray trace headers, see <https://docs.aws.amazon.com/xray/latest/devguide/xray-concepts.html#xray-concepts-tracingheader Tracing header> in the AWS X-Ray Developer Guide.
--
-- * 'pereTime' - The time stamp of the event, per <https://www.rfc-editor.org/rfc/rfc3339.txt RFC3339> . If no time stamp is provided, the time stamp of the 'PutEvents' call is used.
putEventsRequestEntry ::
  PutEventsRequestEntry
putEventsRequestEntry =
  PutEventsRequestEntry'
    { _pereDetailType = Nothing,
      _pereSource = Nothing,
      _pereEventBusName = Nothing,
      _pereDetail = Nothing,
      _pereResources = Nothing,
      _pereTraceHeader = Nothing,
      _pereTime = Nothing
    }

-- | Free-form string used to decide what fields to expect in the event detail.
pereDetailType :: Lens' PutEventsRequestEntry (Maybe Text)
pereDetailType = lens _pereDetailType (\s a -> s {_pereDetailType = a})

-- | The source of the event.
pereSource :: Lens' PutEventsRequestEntry (Maybe Text)
pereSource = lens _pereSource (\s a -> s {_pereSource = a})

-- | The name or ARN of the event bus to receive the event. Only the rules that are associated with this event bus are used to match the event. If you omit this, the default event bus is used.
pereEventBusName :: Lens' PutEventsRequestEntry (Maybe Text)
pereEventBusName = lens _pereEventBusName (\s a -> s {_pereEventBusName = a})

-- | A valid JSON string. There is no other schema imposed. The JSON string may contain fields and nested subobjects.
pereDetail :: Lens' PutEventsRequestEntry (Maybe Text)
pereDetail = lens _pereDetail (\s a -> s {_pereDetail = a})

-- | AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.
pereResources :: Lens' PutEventsRequestEntry [Text]
pereResources = lens _pereResources (\s a -> s {_pereResources = a}) . _Default . _Coerce

-- | An AWS X-Ray trade header, which is an http header (X-Amzn-Trace-Id) that contains the trace-id associated with the event. To learn more about X-Ray trace headers, see <https://docs.aws.amazon.com/xray/latest/devguide/xray-concepts.html#xray-concepts-tracingheader Tracing header> in the AWS X-Ray Developer Guide.
pereTraceHeader :: Lens' PutEventsRequestEntry (Maybe Text)
pereTraceHeader = lens _pereTraceHeader (\s a -> s {_pereTraceHeader = a})

-- | The time stamp of the event, per <https://www.rfc-editor.org/rfc/rfc3339.txt RFC3339> . If no time stamp is provided, the time stamp of the 'PutEvents' call is used.
pereTime :: Lens' PutEventsRequestEntry (Maybe UTCTime)
pereTime = lens _pereTime (\s a -> s {_pereTime = a}) . mapping _Time

instance Hashable PutEventsRequestEntry

instance NFData PutEventsRequestEntry

instance ToJSON PutEventsRequestEntry where
  toJSON PutEventsRequestEntry' {..} =
    object
      ( catMaybes
          [ ("DetailType" .=) <$> _pereDetailType,
            ("Source" .=) <$> _pereSource,
            ("EventBusName" .=) <$> _pereEventBusName,
            ("Detail" .=) <$> _pereDetail,
            ("Resources" .=) <$> _pereResources,
            ("TraceHeader" .=) <$> _pereTraceHeader,
            ("Time" .=) <$> _pereTime
          ]
      )
