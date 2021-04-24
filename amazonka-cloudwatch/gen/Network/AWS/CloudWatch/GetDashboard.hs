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
-- Module      : Network.AWS.CloudWatch.GetDashboard
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays the details of the dashboard that you specify.
--
--
-- To copy an existing dashboard, use @GetDashboard@ , and then use the data returned within @DashboardBody@ as the template for the new dashboard when you call @PutDashboard@ to create the copy.
module Network.AWS.CloudWatch.GetDashboard
  ( -- * Creating a Request
    getDashboard,
    GetDashboard,

    -- * Request Lenses
    gdDashboardName,

    -- * Destructuring the Response
    getDashboardResponse,
    GetDashboardResponse,

    -- * Response Lenses
    gdrrsDashboardBody,
    gdrrsDashboardARN,
    gdrrsDashboardName,
    gdrrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDashboard' smart constructor.
newtype GetDashboard = GetDashboard'
  { _gdDashboardName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDashboard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdDashboardName' - The name of the dashboard to be described.
getDashboard ::
  -- | 'gdDashboardName'
  Text ->
  GetDashboard
getDashboard pDashboardName_ =
  GetDashboard' {_gdDashboardName = pDashboardName_}

-- | The name of the dashboard to be described.
gdDashboardName :: Lens' GetDashboard Text
gdDashboardName = lens _gdDashboardName (\s a -> s {_gdDashboardName = a})

instance AWSRequest GetDashboard where
  type Rs GetDashboard = GetDashboardResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "GetDashboardResult"
      ( \s h x ->
          GetDashboardResponse'
            <$> (x .@? "DashboardBody")
            <*> (x .@? "DashboardArn")
            <*> (x .@? "DashboardName")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDashboard

instance NFData GetDashboard

instance ToHeaders GetDashboard where
  toHeaders = const mempty

instance ToPath GetDashboard where
  toPath = const "/"

instance ToQuery GetDashboard where
  toQuery GetDashboard' {..} =
    mconcat
      [ "Action" =: ("GetDashboard" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "DashboardName" =: _gdDashboardName
      ]

-- | /See:/ 'getDashboardResponse' smart constructor.
data GetDashboardResponse = GetDashboardResponse'
  { _gdrrsDashboardBody ::
      !(Maybe Text),
    _gdrrsDashboardARN ::
      !(Maybe Text),
    _gdrrsDashboardName ::
      !(Maybe Text),
    _gdrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDashboardResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrrsDashboardBody' - The detailed information about the dashboard, including what widgets are included and their location on the dashboard. For more information about the @DashboardBody@ syntax, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html Dashboard Body Structure and Syntax> .
--
-- * 'gdrrsDashboardARN' - The Amazon Resource Name (ARN) of the dashboard.
--
-- * 'gdrrsDashboardName' - The name of the dashboard.
--
-- * 'gdrrsResponseStatus' - -- | The response status code.
getDashboardResponse ::
  -- | 'gdrrsResponseStatus'
  Int ->
  GetDashboardResponse
getDashboardResponse pResponseStatus_ =
  GetDashboardResponse'
    { _gdrrsDashboardBody =
        Nothing,
      _gdrrsDashboardARN = Nothing,
      _gdrrsDashboardName = Nothing,
      _gdrrsResponseStatus = pResponseStatus_
    }

-- | The detailed information about the dashboard, including what widgets are included and their location on the dashboard. For more information about the @DashboardBody@ syntax, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html Dashboard Body Structure and Syntax> .
gdrrsDashboardBody :: Lens' GetDashboardResponse (Maybe Text)
gdrrsDashboardBody = lens _gdrrsDashboardBody (\s a -> s {_gdrrsDashboardBody = a})

-- | The Amazon Resource Name (ARN) of the dashboard.
gdrrsDashboardARN :: Lens' GetDashboardResponse (Maybe Text)
gdrrsDashboardARN = lens _gdrrsDashboardARN (\s a -> s {_gdrrsDashboardARN = a})

-- | The name of the dashboard.
gdrrsDashboardName :: Lens' GetDashboardResponse (Maybe Text)
gdrrsDashboardName = lens _gdrrsDashboardName (\s a -> s {_gdrrsDashboardName = a})

-- | -- | The response status code.
gdrrsResponseStatus :: Lens' GetDashboardResponse Int
gdrrsResponseStatus = lens _gdrrsResponseStatus (\s a -> s {_gdrrsResponseStatus = a})

instance NFData GetDashboardResponse
