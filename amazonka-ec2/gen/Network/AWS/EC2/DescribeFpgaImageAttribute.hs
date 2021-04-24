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
-- Module      : Network.AWS.EC2.DescribeFpgaImageAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified attribute of the specified Amazon FPGA Image (AFI).
module Network.AWS.EC2.DescribeFpgaImageAttribute
  ( -- * Creating a Request
    describeFpgaImageAttribute,
    DescribeFpgaImageAttribute,

    -- * Request Lenses
    dfiaDryRun,
    dfiaFpgaImageId,
    dfiaAttribute,

    -- * Destructuring the Response
    describeFpgaImageAttributeResponse,
    DescribeFpgaImageAttributeResponse,

    -- * Response Lenses
    dfiarrsFpgaImageAttribute,
    dfiarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeFpgaImageAttribute' smart constructor.
data DescribeFpgaImageAttribute = DescribeFpgaImageAttribute'
  { _dfiaDryRun ::
      !(Maybe Bool),
    _dfiaFpgaImageId ::
      !Text,
    _dfiaAttribute ::
      !FpgaImageAttributeName
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeFpgaImageAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfiaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dfiaFpgaImageId' - The ID of the AFI.
--
-- * 'dfiaAttribute' - The AFI attribute.
describeFpgaImageAttribute ::
  -- | 'dfiaFpgaImageId'
  Text ->
  -- | 'dfiaAttribute'
  FpgaImageAttributeName ->
  DescribeFpgaImageAttribute
describeFpgaImageAttribute pFpgaImageId_ pAttribute_ =
  DescribeFpgaImageAttribute'
    { _dfiaDryRun = Nothing,
      _dfiaFpgaImageId = pFpgaImageId_,
      _dfiaAttribute = pAttribute_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dfiaDryRun :: Lens' DescribeFpgaImageAttribute (Maybe Bool)
dfiaDryRun = lens _dfiaDryRun (\s a -> s {_dfiaDryRun = a})

-- | The ID of the AFI.
dfiaFpgaImageId :: Lens' DescribeFpgaImageAttribute Text
dfiaFpgaImageId = lens _dfiaFpgaImageId (\s a -> s {_dfiaFpgaImageId = a})

-- | The AFI attribute.
dfiaAttribute :: Lens' DescribeFpgaImageAttribute FpgaImageAttributeName
dfiaAttribute = lens _dfiaAttribute (\s a -> s {_dfiaAttribute = a})

instance AWSRequest DescribeFpgaImageAttribute where
  type
    Rs DescribeFpgaImageAttribute =
      DescribeFpgaImageAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeFpgaImageAttributeResponse'
            <$> (x .@? "fpgaImageAttribute") <*> (pure (fromEnum s))
      )

instance Hashable DescribeFpgaImageAttribute

instance NFData DescribeFpgaImageAttribute

instance ToHeaders DescribeFpgaImageAttribute where
  toHeaders = const mempty

instance ToPath DescribeFpgaImageAttribute where
  toPath = const "/"

instance ToQuery DescribeFpgaImageAttribute where
  toQuery DescribeFpgaImageAttribute' {..} =
    mconcat
      [ "Action"
          =: ("DescribeFpgaImageAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dfiaDryRun,
        "FpgaImageId" =: _dfiaFpgaImageId,
        "Attribute" =: _dfiaAttribute
      ]

-- | /See:/ 'describeFpgaImageAttributeResponse' smart constructor.
data DescribeFpgaImageAttributeResponse = DescribeFpgaImageAttributeResponse'
  { _dfiarrsFpgaImageAttribute ::
      !( Maybe
           FpgaImageAttribute
       ),
    _dfiarrsResponseStatus ::
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

-- | Creates a value of 'DescribeFpgaImageAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfiarrsFpgaImageAttribute' - Information about the attribute.
--
-- * 'dfiarrsResponseStatus' - -- | The response status code.
describeFpgaImageAttributeResponse ::
  -- | 'dfiarrsResponseStatus'
  Int ->
  DescribeFpgaImageAttributeResponse
describeFpgaImageAttributeResponse pResponseStatus_ =
  DescribeFpgaImageAttributeResponse'
    { _dfiarrsFpgaImageAttribute =
        Nothing,
      _dfiarrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the attribute.
dfiarrsFpgaImageAttribute :: Lens' DescribeFpgaImageAttributeResponse (Maybe FpgaImageAttribute)
dfiarrsFpgaImageAttribute = lens _dfiarrsFpgaImageAttribute (\s a -> s {_dfiarrsFpgaImageAttribute = a})

-- | -- | The response status code.
dfiarrsResponseStatus :: Lens' DescribeFpgaImageAttributeResponse Int
dfiarrsResponseStatus = lens _dfiarrsResponseStatus (\s a -> s {_dfiarrsResponseStatus = a})

instance NFData DescribeFpgaImageAttributeResponse
