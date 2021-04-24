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
-- Module      : Network.AWS.MechanicalTurk.GetAccountBalance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @GetAccountBalance@ operation retrieves the amount of money in your Amazon Mechanical Turk account.
module Network.AWS.MechanicalTurk.GetAccountBalance
  ( -- * Creating a Request
    getAccountBalance,
    GetAccountBalance,

    -- * Destructuring the Response
    getAccountBalanceResponse,
    GetAccountBalanceResponse,

    -- * Response Lenses
    gabrrsOnHoldBalance,
    gabrrsAvailableBalance,
    gabrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAccountBalance' smart constructor.
data GetAccountBalance = GetAccountBalance'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAccountBalance' with the minimum fields required to make a request.
getAccountBalance ::
  GetAccountBalance
getAccountBalance = GetAccountBalance'

instance AWSRequest GetAccountBalance where
  type Rs GetAccountBalance = GetAccountBalanceResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          GetAccountBalanceResponse'
            <$> (x .?> "OnHoldBalance")
            <*> (x .?> "AvailableBalance")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAccountBalance

instance NFData GetAccountBalance

instance ToHeaders GetAccountBalance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.GetAccountBalance" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAccountBalance where
  toJSON = const (Object mempty)

instance ToPath GetAccountBalance where
  toPath = const "/"

instance ToQuery GetAccountBalance where
  toQuery = const mempty

-- | /See:/ 'getAccountBalanceResponse' smart constructor.
data GetAccountBalanceResponse = GetAccountBalanceResponse'
  { _gabrrsOnHoldBalance ::
      !(Maybe Text),
    _gabrrsAvailableBalance ::
      !(Maybe Text),
    _gabrrsResponseStatus ::
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

-- | Creates a value of 'GetAccountBalanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gabrrsOnHoldBalance' - Undocumented member.
--
-- * 'gabrrsAvailableBalance' - Undocumented member.
--
-- * 'gabrrsResponseStatus' - -- | The response status code.
getAccountBalanceResponse ::
  -- | 'gabrrsResponseStatus'
  Int ->
  GetAccountBalanceResponse
getAccountBalanceResponse pResponseStatus_ =
  GetAccountBalanceResponse'
    { _gabrrsOnHoldBalance =
        Nothing,
      _gabrrsAvailableBalance = Nothing,
      _gabrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
gabrrsOnHoldBalance :: Lens' GetAccountBalanceResponse (Maybe Text)
gabrrsOnHoldBalance = lens _gabrrsOnHoldBalance (\s a -> s {_gabrrsOnHoldBalance = a})

-- | Undocumented member.
gabrrsAvailableBalance :: Lens' GetAccountBalanceResponse (Maybe Text)
gabrrsAvailableBalance = lens _gabrrsAvailableBalance (\s a -> s {_gabrrsAvailableBalance = a})

-- | -- | The response status code.
gabrrsResponseStatus :: Lens' GetAccountBalanceResponse Int
gabrrsResponseStatus = lens _gabrrsResponseStatus (\s a -> s {_gabrrsResponseStatus = a})

instance NFData GetAccountBalanceResponse
