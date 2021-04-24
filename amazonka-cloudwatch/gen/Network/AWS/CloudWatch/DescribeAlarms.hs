{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.DescribeAlarms
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified alarms. You can filter the results by specifying a prefix for the alarm name, the alarm state, or a prefix for any action.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatch.DescribeAlarms
  ( -- * Creating a Request
    describeAlarms,
    DescribeAlarms,

    -- * Request Lenses
    dNextToken,
    dAlarmTypes,
    dAlarmNames,
    dStateValue,
    dAlarmNamePrefix,
    dActionPrefix,
    dChildrenOfAlarmName,
    dParentsOfAlarmName,
    dMaxRecords,

    -- * Destructuring the Response
    describeAlarmsResponse,
    DescribeAlarmsResponse,

    -- * Response Lenses
    darrsNextToken,
    darrsMetricAlarms,
    darrsCompositeAlarms,
    darrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAlarms' smart constructor.
data DescribeAlarms = DescribeAlarms'
  { _dNextToken ::
      !(Maybe Text),
    _dAlarmTypes :: !(Maybe [AlarmType]),
    _dAlarmNames :: !(Maybe [Text]),
    _dStateValue :: !(Maybe StateValue),
    _dAlarmNamePrefix :: !(Maybe Text),
    _dActionPrefix :: !(Maybe Text),
    _dChildrenOfAlarmName :: !(Maybe Text),
    _dParentsOfAlarmName :: !(Maybe Text),
    _dMaxRecords :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAlarms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNextToken' - The token returned by a previous call to indicate that there is more data available.
--
-- * 'dAlarmTypes' - Use this parameter to specify whether you want the operation to return metric alarms or composite alarms. If you omit this parameter, only metric alarms are returned.
--
-- * 'dAlarmNames' - The names of the alarms to retrieve information about.
--
-- * 'dStateValue' - Specify this parameter to receive information only about alarms that are currently in the state that you specify.
--
-- * 'dAlarmNamePrefix' - An alarm name prefix. If you specify this parameter, you receive information about all alarms that have names that start with this prefix. If this parameter is specified, you cannot specify @AlarmNames@ .
--
-- * 'dActionPrefix' - Use this parameter to filter the results of the operation to only those alarms that use a certain alarm action. For example, you could specify the ARN of an SNS topic to find all alarms that send notifications to that topic.
--
-- * 'dChildrenOfAlarmName' - If you use this parameter and specify the name of a composite alarm, the operation returns information about the "children" alarms of the alarm you specify. These are the metric alarms and composite alarms referenced in the @AlarmRule@ field of the composite alarm that you specify in @ChildrenOfAlarmName@ . Information about the composite alarm that you name in @ChildrenOfAlarmName@ is not returned. If you specify @ChildrenOfAlarmName@ , you cannot specify any other parameters in the request except for @MaxRecords@ and @NextToken@ . If you do so, you receive a validation error.
--
-- * 'dParentsOfAlarmName' - If you use this parameter and specify the name of a metric or composite alarm, the operation returns information about the "parent" alarms of the alarm you specify. These are the composite alarms that have @AlarmRule@ parameters that reference the alarm named in @ParentsOfAlarmName@ . Information about the alarm that you specify in @ParentsOfAlarmName@ is not returned. If you specify @ParentsOfAlarmName@ , you cannot specify any other parameters in the request except for @MaxRecords@ and @NextToken@ . If you do so, you receive a validation error.
--
-- * 'dMaxRecords' - The maximum number of alarm descriptions to retrieve.
describeAlarms ::
  DescribeAlarms
describeAlarms =
  DescribeAlarms'
    { _dNextToken = Nothing,
      _dAlarmTypes = Nothing,
      _dAlarmNames = Nothing,
      _dStateValue = Nothing,
      _dAlarmNamePrefix = Nothing,
      _dActionPrefix = Nothing,
      _dChildrenOfAlarmName = Nothing,
      _dParentsOfAlarmName = Nothing,
      _dMaxRecords = Nothing
    }

-- | The token returned by a previous call to indicate that there is more data available.
dNextToken :: Lens' DescribeAlarms (Maybe Text)
dNextToken = lens _dNextToken (\s a -> s {_dNextToken = a})

-- | Use this parameter to specify whether you want the operation to return metric alarms or composite alarms. If you omit this parameter, only metric alarms are returned.
dAlarmTypes :: Lens' DescribeAlarms [AlarmType]
dAlarmTypes = lens _dAlarmTypes (\s a -> s {_dAlarmTypes = a}) . _Default . _Coerce

-- | The names of the alarms to retrieve information about.
dAlarmNames :: Lens' DescribeAlarms [Text]
dAlarmNames = lens _dAlarmNames (\s a -> s {_dAlarmNames = a}) . _Default . _Coerce

-- | Specify this parameter to receive information only about alarms that are currently in the state that you specify.
dStateValue :: Lens' DescribeAlarms (Maybe StateValue)
dStateValue = lens _dStateValue (\s a -> s {_dStateValue = a})

-- | An alarm name prefix. If you specify this parameter, you receive information about all alarms that have names that start with this prefix. If this parameter is specified, you cannot specify @AlarmNames@ .
dAlarmNamePrefix :: Lens' DescribeAlarms (Maybe Text)
dAlarmNamePrefix = lens _dAlarmNamePrefix (\s a -> s {_dAlarmNamePrefix = a})

-- | Use this parameter to filter the results of the operation to only those alarms that use a certain alarm action. For example, you could specify the ARN of an SNS topic to find all alarms that send notifications to that topic.
dActionPrefix :: Lens' DescribeAlarms (Maybe Text)
dActionPrefix = lens _dActionPrefix (\s a -> s {_dActionPrefix = a})

-- | If you use this parameter and specify the name of a composite alarm, the operation returns information about the "children" alarms of the alarm you specify. These are the metric alarms and composite alarms referenced in the @AlarmRule@ field of the composite alarm that you specify in @ChildrenOfAlarmName@ . Information about the composite alarm that you name in @ChildrenOfAlarmName@ is not returned. If you specify @ChildrenOfAlarmName@ , you cannot specify any other parameters in the request except for @MaxRecords@ and @NextToken@ . If you do so, you receive a validation error.
dChildrenOfAlarmName :: Lens' DescribeAlarms (Maybe Text)
dChildrenOfAlarmName = lens _dChildrenOfAlarmName (\s a -> s {_dChildrenOfAlarmName = a})

-- | If you use this parameter and specify the name of a metric or composite alarm, the operation returns information about the "parent" alarms of the alarm you specify. These are the composite alarms that have @AlarmRule@ parameters that reference the alarm named in @ParentsOfAlarmName@ . Information about the alarm that you specify in @ParentsOfAlarmName@ is not returned. If you specify @ParentsOfAlarmName@ , you cannot specify any other parameters in the request except for @MaxRecords@ and @NextToken@ . If you do so, you receive a validation error.
dParentsOfAlarmName :: Lens' DescribeAlarms (Maybe Text)
dParentsOfAlarmName = lens _dParentsOfAlarmName (\s a -> s {_dParentsOfAlarmName = a})

-- | The maximum number of alarm descriptions to retrieve.
dMaxRecords :: Lens' DescribeAlarms (Maybe Natural)
dMaxRecords = lens _dMaxRecords (\s a -> s {_dMaxRecords = a}) . mapping _Nat

instance AWSPager DescribeAlarms where
  page rq rs
    | stop (rs ^. darrsNextToken) = Nothing
    | stop (rs ^. darrsMetricAlarms) = Nothing
    | stop (rs ^. darrsCompositeAlarms) = Nothing
    | otherwise =
      Just $ rq & dNextToken .~ rs ^. darrsNextToken

instance AWSRequest DescribeAlarms where
  type Rs DescribeAlarms = DescribeAlarmsResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "DescribeAlarmsResult"
      ( \s h x ->
          DescribeAlarmsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "MetricAlarms" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> ( x .@? "CompositeAlarms" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAlarms

instance NFData DescribeAlarms

instance ToHeaders DescribeAlarms where
  toHeaders = const mempty

instance ToPath DescribeAlarms where
  toPath = const "/"

instance ToQuery DescribeAlarms where
  toQuery DescribeAlarms' {..} =
    mconcat
      [ "Action" =: ("DescribeAlarms" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "NextToken" =: _dNextToken,
        "AlarmTypes"
          =: toQuery (toQueryList "member" <$> _dAlarmTypes),
        "AlarmNames"
          =: toQuery (toQueryList "member" <$> _dAlarmNames),
        "StateValue" =: _dStateValue,
        "AlarmNamePrefix" =: _dAlarmNamePrefix,
        "ActionPrefix" =: _dActionPrefix,
        "ChildrenOfAlarmName" =: _dChildrenOfAlarmName,
        "ParentsOfAlarmName" =: _dParentsOfAlarmName,
        "MaxRecords" =: _dMaxRecords
      ]

-- | /See:/ 'describeAlarmsResponse' smart constructor.
data DescribeAlarmsResponse = DescribeAlarmsResponse'
  { _darrsNextToken ::
      !(Maybe Text),
    _darrsMetricAlarms ::
      !(Maybe [MetricAlarm]),
    _darrsCompositeAlarms ::
      !(Maybe [CompositeAlarm]),
    _darrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAlarmsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsNextToken' - The token that marks the start of the next batch of returned results.
--
-- * 'darrsMetricAlarms' - The information about any metric alarms returned by the operation.
--
-- * 'darrsCompositeAlarms' - The information about any composite alarms returned by the operation.
--
-- * 'darrsResponseStatus' - -- | The response status code.
describeAlarmsResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  DescribeAlarmsResponse
describeAlarmsResponse pResponseStatus_ =
  DescribeAlarmsResponse'
    { _darrsNextToken = Nothing,
      _darrsMetricAlarms = Nothing,
      _darrsCompositeAlarms = Nothing,
      _darrsResponseStatus = pResponseStatus_
    }

-- | The token that marks the start of the next batch of returned results.
darrsNextToken :: Lens' DescribeAlarmsResponse (Maybe Text)
darrsNextToken = lens _darrsNextToken (\s a -> s {_darrsNextToken = a})

-- | The information about any metric alarms returned by the operation.
darrsMetricAlarms :: Lens' DescribeAlarmsResponse [MetricAlarm]
darrsMetricAlarms = lens _darrsMetricAlarms (\s a -> s {_darrsMetricAlarms = a}) . _Default . _Coerce

-- | The information about any composite alarms returned by the operation.
darrsCompositeAlarms :: Lens' DescribeAlarmsResponse [CompositeAlarm]
darrsCompositeAlarms = lens _darrsCompositeAlarms (\s a -> s {_darrsCompositeAlarms = a}) . _Default . _Coerce

-- | -- | The response status code.
darrsResponseStatus :: Lens' DescribeAlarmsResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

instance NFData DescribeAlarmsResponse
