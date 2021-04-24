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
-- Module      : Network.AWS.APIGateway.GetUsagePlanKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a usage plan key of a given key identifier.
module Network.AWS.APIGateway.GetUsagePlanKey
  ( -- * Creating a Request
    getUsagePlanKey,
    GetUsagePlanKey,

    -- * Request Lenses
    gupkUsagePlanId,
    gupkKeyId,

    -- * Destructuring the Response
    usagePlanKey,
    UsagePlanKey,

    -- * Response Lenses
    upkId,
    upkName,
    upkValue,
    upkType,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The GET request to get a usage plan key of a given key identifier.
--
--
--
-- /See:/ 'getUsagePlanKey' smart constructor.
data GetUsagePlanKey = GetUsagePlanKey'
  { _gupkUsagePlanId ::
      !Text,
    _gupkKeyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUsagePlanKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gupkUsagePlanId' - [Required] The Id of the 'UsagePlan' resource representing the usage plan containing the to-be-retrieved 'UsagePlanKey' resource representing a plan customer.
--
-- * 'gupkKeyId' - [Required] The key Id of the to-be-retrieved 'UsagePlanKey' resource representing a plan customer.
getUsagePlanKey ::
  -- | 'gupkUsagePlanId'
  Text ->
  -- | 'gupkKeyId'
  Text ->
  GetUsagePlanKey
getUsagePlanKey pUsagePlanId_ pKeyId_ =
  GetUsagePlanKey'
    { _gupkUsagePlanId = pUsagePlanId_,
      _gupkKeyId = pKeyId_
    }

-- | [Required] The Id of the 'UsagePlan' resource representing the usage plan containing the to-be-retrieved 'UsagePlanKey' resource representing a plan customer.
gupkUsagePlanId :: Lens' GetUsagePlanKey Text
gupkUsagePlanId = lens _gupkUsagePlanId (\s a -> s {_gupkUsagePlanId = a})

-- | [Required] The key Id of the to-be-retrieved 'UsagePlanKey' resource representing a plan customer.
gupkKeyId :: Lens' GetUsagePlanKey Text
gupkKeyId = lens _gupkKeyId (\s a -> s {_gupkKeyId = a})

instance AWSRequest GetUsagePlanKey where
  type Rs GetUsagePlanKey = UsagePlanKey
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetUsagePlanKey

instance NFData GetUsagePlanKey

instance ToHeaders GetUsagePlanKey where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetUsagePlanKey where
  toPath GetUsagePlanKey' {..} =
    mconcat
      [ "/usageplans/",
        toBS _gupkUsagePlanId,
        "/keys/",
        toBS _gupkKeyId
      ]

instance ToQuery GetUsagePlanKey where
  toQuery = const mempty
