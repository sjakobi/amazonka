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
-- Module      : Network.AWS.FMS.GetProtectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack. Other policy types are currently unsupported.
module Network.AWS.FMS.GetProtectionStatus
  ( -- * Creating a Request
    getProtectionStatus,
    GetProtectionStatus,

    -- * Request Lenses
    gpsNextToken,
    gpsMaxResults,
    gpsStartTime,
    gpsEndTime,
    gpsMemberAccountId,
    gpsPolicyId,

    -- * Destructuring the Response
    getProtectionStatusResponse,
    GetProtectionStatusResponse,

    -- * Response Lenses
    gpsrrsNextToken,
    gpsrrsAdminAccountId,
    gpsrrsData,
    gpsrrsServiceType,
    gpsrrsResponseStatus,
  )
where

import Network.AWS.FMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getProtectionStatus' smart constructor.
data GetProtectionStatus = GetProtectionStatus'
  { _gpsNextToken ::
      !(Maybe Text),
    _gpsMaxResults :: !(Maybe Nat),
    _gpsStartTime :: !(Maybe POSIX),
    _gpsEndTime :: !(Maybe POSIX),
    _gpsMemberAccountId ::
      !(Maybe Text),
    _gpsPolicyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetProtectionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpsNextToken' - If you specify a value for @MaxResults@ and you have more objects than the number that you specify for @MaxResults@ , AWS Firewall Manager returns a @NextToken@ value in the response, which you can use to retrieve another group of objects. For the second and subsequent @GetProtectionStatus@ requests, specify the value of @NextToken@ from the previous response to get information about another batch of objects.
--
-- * 'gpsMaxResults' - Specifies the number of objects that you want AWS Firewall Manager to return for this request. If you have more objects than the number that you specify for @MaxResults@ , the response includes a @NextToken@ value that you can use to get another batch of objects.
--
-- * 'gpsStartTime' - The start of the time period to query for the attacks. This is a @timestamp@ type. The request syntax listing indicates a @number@ type because the default used by AWS Firewall Manager is Unix time in seconds. However, any valid @timestamp@ format is allowed.
--
-- * 'gpsEndTime' - The end of the time period to query for the attacks. This is a @timestamp@ type. The request syntax listing indicates a @number@ type because the default used by AWS Firewall Manager is Unix time in seconds. However, any valid @timestamp@ format is allowed.
--
-- * 'gpsMemberAccountId' - The AWS account that is in scope of the policy that you want to get the details for.
--
-- * 'gpsPolicyId' - The ID of the policy for which you want to get the attack information.
getProtectionStatus ::
  -- | 'gpsPolicyId'
  Text ->
  GetProtectionStatus
getProtectionStatus pPolicyId_ =
  GetProtectionStatus'
    { _gpsNextToken = Nothing,
      _gpsMaxResults = Nothing,
      _gpsStartTime = Nothing,
      _gpsEndTime = Nothing,
      _gpsMemberAccountId = Nothing,
      _gpsPolicyId = pPolicyId_
    }

-- | If you specify a value for @MaxResults@ and you have more objects than the number that you specify for @MaxResults@ , AWS Firewall Manager returns a @NextToken@ value in the response, which you can use to retrieve another group of objects. For the second and subsequent @GetProtectionStatus@ requests, specify the value of @NextToken@ from the previous response to get information about another batch of objects.
gpsNextToken :: Lens' GetProtectionStatus (Maybe Text)
gpsNextToken = lens _gpsNextToken (\s a -> s {_gpsNextToken = a})

-- | Specifies the number of objects that you want AWS Firewall Manager to return for this request. If you have more objects than the number that you specify for @MaxResults@ , the response includes a @NextToken@ value that you can use to get another batch of objects.
gpsMaxResults :: Lens' GetProtectionStatus (Maybe Natural)
gpsMaxResults = lens _gpsMaxResults (\s a -> s {_gpsMaxResults = a}) . mapping _Nat

-- | The start of the time period to query for the attacks. This is a @timestamp@ type. The request syntax listing indicates a @number@ type because the default used by AWS Firewall Manager is Unix time in seconds. However, any valid @timestamp@ format is allowed.
gpsStartTime :: Lens' GetProtectionStatus (Maybe UTCTime)
gpsStartTime = lens _gpsStartTime (\s a -> s {_gpsStartTime = a}) . mapping _Time

-- | The end of the time period to query for the attacks. This is a @timestamp@ type. The request syntax listing indicates a @number@ type because the default used by AWS Firewall Manager is Unix time in seconds. However, any valid @timestamp@ format is allowed.
gpsEndTime :: Lens' GetProtectionStatus (Maybe UTCTime)
gpsEndTime = lens _gpsEndTime (\s a -> s {_gpsEndTime = a}) . mapping _Time

-- | The AWS account that is in scope of the policy that you want to get the details for.
gpsMemberAccountId :: Lens' GetProtectionStatus (Maybe Text)
gpsMemberAccountId = lens _gpsMemberAccountId (\s a -> s {_gpsMemberAccountId = a})

-- | The ID of the policy for which you want to get the attack information.
gpsPolicyId :: Lens' GetProtectionStatus Text
gpsPolicyId = lens _gpsPolicyId (\s a -> s {_gpsPolicyId = a})

instance AWSRequest GetProtectionStatus where
  type
    Rs GetProtectionStatus =
      GetProtectionStatusResponse
  request = postJSON fms
  response =
    receiveJSON
      ( \s h x ->
          GetProtectionStatusResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AdminAccountId")
            <*> (x .?> "Data")
            <*> (x .?> "ServiceType")
            <*> (pure (fromEnum s))
      )

instance Hashable GetProtectionStatus

instance NFData GetProtectionStatus

instance ToHeaders GetProtectionStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSFMS_20180101.GetProtectionStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetProtectionStatus where
  toJSON GetProtectionStatus' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gpsNextToken,
            ("MaxResults" .=) <$> _gpsMaxResults,
            ("StartTime" .=) <$> _gpsStartTime,
            ("EndTime" .=) <$> _gpsEndTime,
            ("MemberAccountId" .=) <$> _gpsMemberAccountId,
            Just ("PolicyId" .= _gpsPolicyId)
          ]
      )

instance ToPath GetProtectionStatus where
  toPath = const "/"

instance ToQuery GetProtectionStatus where
  toQuery = const mempty

-- | /See:/ 'getProtectionStatusResponse' smart constructor.
data GetProtectionStatusResponse = GetProtectionStatusResponse'
  { _gpsrrsNextToken ::
      !(Maybe Text),
    _gpsrrsAdminAccountId ::
      !(Maybe Text),
    _gpsrrsData ::
      !(Maybe Text),
    _gpsrrsServiceType ::
      !( Maybe
           SecurityServiceType
       ),
    _gpsrrsResponseStatus ::
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

-- | Creates a value of 'GetProtectionStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpsrrsNextToken' - If you have more objects than the number that you specified for @MaxResults@ in the request, the response includes a @NextToken@ value. To list more objects, submit another @GetProtectionStatus@ request, and specify the @NextToken@ value from the response in the @NextToken@ value in the next request. AWS SDKs provide auto-pagination that identify @NextToken@ in a response and make subsequent request calls automatically on your behalf. However, this feature is not supported by @GetProtectionStatus@ . You must submit subsequent requests with @NextToken@ using your own processes.
--
-- * 'gpsrrsAdminAccountId' - The ID of the AWS Firewall administrator account for this policy.
--
-- * 'gpsrrsData' - Details about the attack, including the following:     * Attack type     * Account ID     * ARN of the resource attacked     * Start time of the attack     * End time of the attack (ongoing attacks will not have an end time) The details are in JSON format.
--
-- * 'gpsrrsServiceType' - The service type that is protected by the policy. Currently, this is always @SHIELD_ADVANCED@ .
--
-- * 'gpsrrsResponseStatus' - -- | The response status code.
getProtectionStatusResponse ::
  -- | 'gpsrrsResponseStatus'
  Int ->
  GetProtectionStatusResponse
getProtectionStatusResponse pResponseStatus_ =
  GetProtectionStatusResponse'
    { _gpsrrsNextToken =
        Nothing,
      _gpsrrsAdminAccountId = Nothing,
      _gpsrrsData = Nothing,
      _gpsrrsServiceType = Nothing,
      _gpsrrsResponseStatus = pResponseStatus_
    }

-- | If you have more objects than the number that you specified for @MaxResults@ in the request, the response includes a @NextToken@ value. To list more objects, submit another @GetProtectionStatus@ request, and specify the @NextToken@ value from the response in the @NextToken@ value in the next request. AWS SDKs provide auto-pagination that identify @NextToken@ in a response and make subsequent request calls automatically on your behalf. However, this feature is not supported by @GetProtectionStatus@ . You must submit subsequent requests with @NextToken@ using your own processes.
gpsrrsNextToken :: Lens' GetProtectionStatusResponse (Maybe Text)
gpsrrsNextToken = lens _gpsrrsNextToken (\s a -> s {_gpsrrsNextToken = a})

-- | The ID of the AWS Firewall administrator account for this policy.
gpsrrsAdminAccountId :: Lens' GetProtectionStatusResponse (Maybe Text)
gpsrrsAdminAccountId = lens _gpsrrsAdminAccountId (\s a -> s {_gpsrrsAdminAccountId = a})

-- | Details about the attack, including the following:     * Attack type     * Account ID     * ARN of the resource attacked     * Start time of the attack     * End time of the attack (ongoing attacks will not have an end time) The details are in JSON format.
gpsrrsData :: Lens' GetProtectionStatusResponse (Maybe Text)
gpsrrsData = lens _gpsrrsData (\s a -> s {_gpsrrsData = a})

-- | The service type that is protected by the policy. Currently, this is always @SHIELD_ADVANCED@ .
gpsrrsServiceType :: Lens' GetProtectionStatusResponse (Maybe SecurityServiceType)
gpsrrsServiceType = lens _gpsrrsServiceType (\s a -> s {_gpsrrsServiceType = a})

-- | -- | The response status code.
gpsrrsResponseStatus :: Lens' GetProtectionStatusResponse Int
gpsrrsResponseStatus = lens _gpsrrsResponseStatus (\s a -> s {_gpsrrsResponseStatus = a})

instance NFData GetProtectionStatusResponse
