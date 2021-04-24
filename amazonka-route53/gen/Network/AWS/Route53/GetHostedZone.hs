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
-- Module      : Network.AWS.Route53.GetHostedZone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specified hosted zone including the four name servers assigned to the hosted zone.
module Network.AWS.Route53.GetHostedZone
  ( -- * Creating a Request
    getHostedZone,
    GetHostedZone,

    -- * Request Lenses
    ghzId,

    -- * Destructuring the Response
    getHostedZoneResponse,
    GetHostedZoneResponse,

    -- * Response Lenses
    ghzrrsDelegationSet,
    ghzrrsVPCs,
    ghzrrsResponseStatus,
    ghzrrsHostedZone,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request to get information about a specified hosted zone.
--
--
--
-- /See:/ 'getHostedZone' smart constructor.
newtype GetHostedZone = GetHostedZone'
  { _ghzId ::
      ResourceId
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetHostedZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghzId' - The ID of the hosted zone that you want to get information about.
getHostedZone ::
  -- | 'ghzId'
  ResourceId ->
  GetHostedZone
getHostedZone pId_ = GetHostedZone' {_ghzId = pId_}

-- | The ID of the hosted zone that you want to get information about.
ghzId :: Lens' GetHostedZone ResourceId
ghzId = lens _ghzId (\s a -> s {_ghzId = a})

instance AWSRequest GetHostedZone where
  type Rs GetHostedZone = GetHostedZoneResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          GetHostedZoneResponse'
            <$> (x .@? "DelegationSet")
            <*> ( x .@? "VPCs" .!@ mempty
                    >>= may (parseXMLList1 "VPC")
                )
            <*> (pure (fromEnum s))
            <*> (x .@ "HostedZone")
      )

instance Hashable GetHostedZone

instance NFData GetHostedZone

instance ToHeaders GetHostedZone where
  toHeaders = const mempty

instance ToPath GetHostedZone where
  toPath GetHostedZone' {..} =
    mconcat ["/2013-04-01/hostedzone/", toBS _ghzId]

instance ToQuery GetHostedZone where
  toQuery = const mempty

-- | A complex type that contain the response to a @GetHostedZone@ request.
--
--
--
-- /See:/ 'getHostedZoneResponse' smart constructor.
data GetHostedZoneResponse = GetHostedZoneResponse'
  { _ghzrrsDelegationSet ::
      !(Maybe DelegationSet),
    _ghzrrsVPCs ::
      !(Maybe (List1 VPC)),
    _ghzrrsResponseStatus ::
      !Int,
    _ghzrrsHostedZone ::
      !HostedZone
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetHostedZoneResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghzrrsDelegationSet' - A complex type that lists the Amazon Route 53 name servers for the specified hosted zone.
--
-- * 'ghzrrsVPCs' - A complex type that contains information about the VPCs that are associated with the specified hosted zone.
--
-- * 'ghzrrsResponseStatus' - -- | The response status code.
--
-- * 'ghzrrsHostedZone' - A complex type that contains general information about the specified hosted zone.
getHostedZoneResponse ::
  -- | 'ghzrrsResponseStatus'
  Int ->
  -- | 'ghzrrsHostedZone'
  HostedZone ->
  GetHostedZoneResponse
getHostedZoneResponse pResponseStatus_ pHostedZone_ =
  GetHostedZoneResponse'
    { _ghzrrsDelegationSet =
        Nothing,
      _ghzrrsVPCs = Nothing,
      _ghzrrsResponseStatus = pResponseStatus_,
      _ghzrrsHostedZone = pHostedZone_
    }

-- | A complex type that lists the Amazon Route 53 name servers for the specified hosted zone.
ghzrrsDelegationSet :: Lens' GetHostedZoneResponse (Maybe DelegationSet)
ghzrrsDelegationSet = lens _ghzrrsDelegationSet (\s a -> s {_ghzrrsDelegationSet = a})

-- | A complex type that contains information about the VPCs that are associated with the specified hosted zone.
ghzrrsVPCs :: Lens' GetHostedZoneResponse (Maybe (NonEmpty VPC))
ghzrrsVPCs = lens _ghzrrsVPCs (\s a -> s {_ghzrrsVPCs = a}) . mapping _List1

-- | -- | The response status code.
ghzrrsResponseStatus :: Lens' GetHostedZoneResponse Int
ghzrrsResponseStatus = lens _ghzrrsResponseStatus (\s a -> s {_ghzrrsResponseStatus = a})

-- | A complex type that contains general information about the specified hosted zone.
ghzrrsHostedZone :: Lens' GetHostedZoneResponse HostedZone
ghzrrsHostedZone = lens _ghzrrsHostedZone (\s a -> s {_ghzrrsHostedZone = a})

instance NFData GetHostedZoneResponse
