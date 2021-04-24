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
-- Module      : Network.AWS.Redshift.DescribeHSMConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified Amazon Redshift HSM configuration. If no configuration ID is specified, returns information about all the HSM configurations owned by your AWS customer account.
--
--
-- If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM connections that match any combination of the specified keys and values. For example, if you have @owner@ and @environment@ for tag keys, and @admin@ and @test@ for tag values, all HSM connections that have any combination of those values are returned.
--
-- If both tag keys and values are omitted from the request, HSM connections are returned regardless of whether they have tag keys or values associated with them.
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeHSMConfigurations
  ( -- * Creating a Request
    describeHSMConfigurations,
    DescribeHSMConfigurations,

    -- * Request Lenses
    dhcTagKeys,
    dhcHSMConfigurationIdentifier,
    dhcTagValues,
    dhcMarker,
    dhcMaxRecords,

    -- * Destructuring the Response
    describeHSMConfigurationsResponse,
    DescribeHSMConfigurationsResponse,

    -- * Response Lenses
    dhcrrsHSMConfigurations,
    dhcrrsMarker,
    dhcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeHSMConfigurations' smart constructor.
data DescribeHSMConfigurations = DescribeHSMConfigurations'
  { _dhcTagKeys ::
      !(Maybe [Text]),
    _dhcHSMConfigurationIdentifier ::
      !(Maybe Text),
    _dhcTagValues ::
      !(Maybe [Text]),
    _dhcMarker ::
      !(Maybe Text),
    _dhcMaxRecords ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeHSMConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhcTagKeys' - A tag key or keys for which you want to return all matching HSM configurations that are associated with the specified key or keys. For example, suppose that you have HSM configurations that are tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag keys associated with them.
--
-- * 'dhcHSMConfigurationIdentifier' - The identifier of a specific Amazon Redshift HSM configuration to be described. If no identifier is specified, information is returned for all HSM configurations owned by your AWS customer account.
--
-- * 'dhcTagValues' - A tag value or values for which you want to return all matching HSM configurations that are associated with the specified tag value or values. For example, suppose that you have HSM configurations that are tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag values associated with them.
--
-- * 'dhcMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeHsmConfigurations' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'dhcMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
describeHSMConfigurations ::
  DescribeHSMConfigurations
describeHSMConfigurations =
  DescribeHSMConfigurations'
    { _dhcTagKeys = Nothing,
      _dhcHSMConfigurationIdentifier = Nothing,
      _dhcTagValues = Nothing,
      _dhcMarker = Nothing,
      _dhcMaxRecords = Nothing
    }

-- | A tag key or keys for which you want to return all matching HSM configurations that are associated with the specified key or keys. For example, suppose that you have HSM configurations that are tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag keys associated with them.
dhcTagKeys :: Lens' DescribeHSMConfigurations [Text]
dhcTagKeys = lens _dhcTagKeys (\s a -> s {_dhcTagKeys = a}) . _Default . _Coerce

-- | The identifier of a specific Amazon Redshift HSM configuration to be described. If no identifier is specified, information is returned for all HSM configurations owned by your AWS customer account.
dhcHSMConfigurationIdentifier :: Lens' DescribeHSMConfigurations (Maybe Text)
dhcHSMConfigurationIdentifier = lens _dhcHSMConfigurationIdentifier (\s a -> s {_dhcHSMConfigurationIdentifier = a})

-- | A tag value or values for which you want to return all matching HSM configurations that are associated with the specified tag value or values. For example, suppose that you have HSM configurations that are tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag values associated with them.
dhcTagValues :: Lens' DescribeHSMConfigurations [Text]
dhcTagValues = lens _dhcTagValues (\s a -> s {_dhcTagValues = a}) . _Default . _Coerce

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeHsmConfigurations' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
dhcMarker :: Lens' DescribeHSMConfigurations (Maybe Text)
dhcMarker = lens _dhcMarker (\s a -> s {_dhcMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
dhcMaxRecords :: Lens' DescribeHSMConfigurations (Maybe Int)
dhcMaxRecords = lens _dhcMaxRecords (\s a -> s {_dhcMaxRecords = a})

instance AWSPager DescribeHSMConfigurations where
  page rq rs
    | stop (rs ^. dhcrrsMarker) = Nothing
    | stop (rs ^. dhcrrsHSMConfigurations) = Nothing
    | otherwise =
      Just $ rq & dhcMarker .~ rs ^. dhcrrsMarker

instance AWSRequest DescribeHSMConfigurations where
  type
    Rs DescribeHSMConfigurations =
      DescribeHSMConfigurationsResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeHsmConfigurationsResult"
      ( \s h x ->
          DescribeHSMConfigurationsResponse'
            <$> ( x .@? "HsmConfigurations" .!@ mempty
                    >>= may (parseXMLList "HsmConfiguration")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeHSMConfigurations

instance NFData DescribeHSMConfigurations

instance ToHeaders DescribeHSMConfigurations where
  toHeaders = const mempty

instance ToPath DescribeHSMConfigurations where
  toPath = const "/"

instance ToQuery DescribeHSMConfigurations where
  toQuery DescribeHSMConfigurations' {..} =
    mconcat
      [ "Action"
          =: ("DescribeHsmConfigurations" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "TagKeys"
          =: toQuery (toQueryList "TagKey" <$> _dhcTagKeys),
        "HsmConfigurationIdentifier"
          =: _dhcHSMConfigurationIdentifier,
        "TagValues"
          =: toQuery (toQueryList "TagValue" <$> _dhcTagValues),
        "Marker" =: _dhcMarker,
        "MaxRecords" =: _dhcMaxRecords
      ]

-- |
--
--
--
-- /See:/ 'describeHSMConfigurationsResponse' smart constructor.
data DescribeHSMConfigurationsResponse = DescribeHSMConfigurationsResponse'
  { _dhcrrsHSMConfigurations ::
      !( Maybe
           [HSMConfiguration]
       ),
    _dhcrrsMarker ::
      !( Maybe
           Text
       ),
    _dhcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeHSMConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhcrrsHSMConfigurations' - A list of @HsmConfiguration@ objects.
--
-- * 'dhcrrsMarker' - A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
--
-- * 'dhcrrsResponseStatus' - -- | The response status code.
describeHSMConfigurationsResponse ::
  -- | 'dhcrrsResponseStatus'
  Int ->
  DescribeHSMConfigurationsResponse
describeHSMConfigurationsResponse pResponseStatus_ =
  DescribeHSMConfigurationsResponse'
    { _dhcrrsHSMConfigurations =
        Nothing,
      _dhcrrsMarker = Nothing,
      _dhcrrsResponseStatus = pResponseStatus_
    }

-- | A list of @HsmConfiguration@ objects.
dhcrrsHSMConfigurations :: Lens' DescribeHSMConfigurationsResponse [HSMConfiguration]
dhcrrsHSMConfigurations = lens _dhcrrsHSMConfigurations (\s a -> s {_dhcrrsHSMConfigurations = a}) . _Default . _Coerce

-- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
dhcrrsMarker :: Lens' DescribeHSMConfigurationsResponse (Maybe Text)
dhcrrsMarker = lens _dhcrrsMarker (\s a -> s {_dhcrrsMarker = a})

-- | -- | The response status code.
dhcrrsResponseStatus :: Lens' DescribeHSMConfigurationsResponse Int
dhcrrsResponseStatus = lens _dhcrrsResponseStatus (\s a -> s {_dhcrrsResponseStatus = a})

instance NFData DescribeHSMConfigurationsResponse
