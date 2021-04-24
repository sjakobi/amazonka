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
-- Module      : Network.AWS.Shield.DescribeProtection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the details of a 'Protection' object.
module Network.AWS.Shield.DescribeProtection
  ( -- * Creating a Request
    describeProtection,
    DescribeProtection,

    -- * Request Lenses
    dpResourceARN,
    dpProtectionId,

    -- * Destructuring the Response
    describeProtectionResponse,
    DescribeProtectionResponse,

    -- * Response Lenses
    dprrsProtection,
    dprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Shield.Types

-- | /See:/ 'describeProtection' smart constructor.
data DescribeProtection = DescribeProtection'
  { _dpResourceARN ::
      !(Maybe Text),
    _dpProtectionId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeProtection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpResourceARN' - The ARN (Amazon Resource Name) of the AWS resource for the 'Protection' object that is described. When submitting the @DescribeProtection@ request you must provide either the @ResourceArn@ or the @ProtectionID@ , but not both.
--
-- * 'dpProtectionId' - The unique identifier (ID) for the 'Protection' object that is described. When submitting the @DescribeProtection@ request you must provide either the @ResourceArn@ or the @ProtectionID@ , but not both.
describeProtection ::
  DescribeProtection
describeProtection =
  DescribeProtection'
    { _dpResourceARN = Nothing,
      _dpProtectionId = Nothing
    }

-- | The ARN (Amazon Resource Name) of the AWS resource for the 'Protection' object that is described. When submitting the @DescribeProtection@ request you must provide either the @ResourceArn@ or the @ProtectionID@ , but not both.
dpResourceARN :: Lens' DescribeProtection (Maybe Text)
dpResourceARN = lens _dpResourceARN (\s a -> s {_dpResourceARN = a})

-- | The unique identifier (ID) for the 'Protection' object that is described. When submitting the @DescribeProtection@ request you must provide either the @ResourceArn@ or the @ProtectionID@ , but not both.
dpProtectionId :: Lens' DescribeProtection (Maybe Text)
dpProtectionId = lens _dpProtectionId (\s a -> s {_dpProtectionId = a})

instance AWSRequest DescribeProtection where
  type
    Rs DescribeProtection =
      DescribeProtectionResponse
  request = postJSON shield
  response =
    receiveJSON
      ( \s h x ->
          DescribeProtectionResponse'
            <$> (x .?> "Protection") <*> (pure (fromEnum s))
      )

instance Hashable DescribeProtection

instance NFData DescribeProtection

instance ToHeaders DescribeProtection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShield_20160616.DescribeProtection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeProtection where
  toJSON DescribeProtection' {..} =
    object
      ( catMaybes
          [ ("ResourceArn" .=) <$> _dpResourceARN,
            ("ProtectionId" .=) <$> _dpProtectionId
          ]
      )

instance ToPath DescribeProtection where
  toPath = const "/"

instance ToQuery DescribeProtection where
  toQuery = const mempty

-- | /See:/ 'describeProtectionResponse' smart constructor.
data DescribeProtectionResponse = DescribeProtectionResponse'
  { _dprrsProtection ::
      !( Maybe
           Protection
       ),
    _dprrsResponseStatus ::
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

-- | Creates a value of 'DescribeProtectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprrsProtection' - The 'Protection' object that is described.
--
-- * 'dprrsResponseStatus' - -- | The response status code.
describeProtectionResponse ::
  -- | 'dprrsResponseStatus'
  Int ->
  DescribeProtectionResponse
describeProtectionResponse pResponseStatus_ =
  DescribeProtectionResponse'
    { _dprrsProtection =
        Nothing,
      _dprrsResponseStatus = pResponseStatus_
    }

-- | The 'Protection' object that is described.
dprrsProtection :: Lens' DescribeProtectionResponse (Maybe Protection)
dprrsProtection = lens _dprrsProtection (\s a -> s {_dprrsProtection = a})

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DescribeProtectionResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DescribeProtectionResponse
