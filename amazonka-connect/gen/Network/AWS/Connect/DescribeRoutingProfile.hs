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
-- Module      : Network.AWS.Connect.DescribeRoutingProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified routing profile.
module Network.AWS.Connect.DescribeRoutingProfile
  ( -- * Creating a Request
    describeRoutingProfile,
    DescribeRoutingProfile,

    -- * Request Lenses
    drpInstanceId,
    drpRoutingProfileId,

    -- * Destructuring the Response
    describeRoutingProfileResponse,
    DescribeRoutingProfileResponse,

    -- * Response Lenses
    drprrsRoutingProfile,
    drprrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRoutingProfile' smart constructor.
data DescribeRoutingProfile = DescribeRoutingProfile'
  { _drpInstanceId ::
      !Text,
    _drpRoutingProfileId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeRoutingProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drpInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'drpRoutingProfileId' - The identifier of the routing profile.
describeRoutingProfile ::
  -- | 'drpInstanceId'
  Text ->
  -- | 'drpRoutingProfileId'
  Text ->
  DescribeRoutingProfile
describeRoutingProfile
  pInstanceId_
  pRoutingProfileId_ =
    DescribeRoutingProfile'
      { _drpInstanceId =
          pInstanceId_,
        _drpRoutingProfileId = pRoutingProfileId_
      }

-- | The identifier of the Amazon Connect instance.
drpInstanceId :: Lens' DescribeRoutingProfile Text
drpInstanceId = lens _drpInstanceId (\s a -> s {_drpInstanceId = a})

-- | The identifier of the routing profile.
drpRoutingProfileId :: Lens' DescribeRoutingProfile Text
drpRoutingProfileId = lens _drpRoutingProfileId (\s a -> s {_drpRoutingProfileId = a})

instance AWSRequest DescribeRoutingProfile where
  type
    Rs DescribeRoutingProfile =
      DescribeRoutingProfileResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          DescribeRoutingProfileResponse'
            <$> (x .?> "RoutingProfile") <*> (pure (fromEnum s))
      )

instance Hashable DescribeRoutingProfile

instance NFData DescribeRoutingProfile

instance ToHeaders DescribeRoutingProfile where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeRoutingProfile where
  toPath DescribeRoutingProfile' {..} =
    mconcat
      [ "/routing-profiles/",
        toBS _drpInstanceId,
        "/",
        toBS _drpRoutingProfileId
      ]

instance ToQuery DescribeRoutingProfile where
  toQuery = const mempty

-- | /See:/ 'describeRoutingProfileResponse' smart constructor.
data DescribeRoutingProfileResponse = DescribeRoutingProfileResponse'
  { _drprrsRoutingProfile ::
      !( Maybe
           RoutingProfile
       ),
    _drprrsResponseStatus ::
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

-- | Creates a value of 'DescribeRoutingProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drprrsRoutingProfile' - The routing profile.
--
-- * 'drprrsResponseStatus' - -- | The response status code.
describeRoutingProfileResponse ::
  -- | 'drprrsResponseStatus'
  Int ->
  DescribeRoutingProfileResponse
describeRoutingProfileResponse pResponseStatus_ =
  DescribeRoutingProfileResponse'
    { _drprrsRoutingProfile =
        Nothing,
      _drprrsResponseStatus = pResponseStatus_
    }

-- | The routing profile.
drprrsRoutingProfile :: Lens' DescribeRoutingProfileResponse (Maybe RoutingProfile)
drprrsRoutingProfile = lens _drprrsRoutingProfile (\s a -> s {_drprrsRoutingProfile = a})

-- | -- | The response status code.
drprrsResponseStatus :: Lens' DescribeRoutingProfileResponse Int
drprrsResponseStatus = lens _drprrsResponseStatus (\s a -> s {_drprrsResponseStatus = a})

instance NFData DescribeRoutingProfileResponse
