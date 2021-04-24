{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationItemError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationItemError where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationErrorCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the error for the burstable performance instance whose credit option for CPU usage was not modified.
--
--
--
-- /See:/ 'unsuccessfulInstanceCreditSpecificationItemError' smart constructor.
data UnsuccessfulInstanceCreditSpecificationItemError = UnsuccessfulInstanceCreditSpecificationItemError'
  { _uicsieMessage ::
      !( Maybe
           Text
       ),
    _uicsieCode ::
      !( Maybe
           UnsuccessfulInstanceCreditSpecificationErrorCode
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UnsuccessfulInstanceCreditSpecificationItemError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uicsieMessage' - The applicable error message.
--
-- * 'uicsieCode' - The error code.
unsuccessfulInstanceCreditSpecificationItemError ::
  UnsuccessfulInstanceCreditSpecificationItemError
unsuccessfulInstanceCreditSpecificationItemError =
  UnsuccessfulInstanceCreditSpecificationItemError'
    { _uicsieMessage =
        Nothing,
      _uicsieCode = Nothing
    }

-- | The applicable error message.
uicsieMessage :: Lens' UnsuccessfulInstanceCreditSpecificationItemError (Maybe Text)
uicsieMessage = lens _uicsieMessage (\s a -> s {_uicsieMessage = a})

-- | The error code.
uicsieCode :: Lens' UnsuccessfulInstanceCreditSpecificationItemError (Maybe UnsuccessfulInstanceCreditSpecificationErrorCode)
uicsieCode = lens _uicsieCode (\s a -> s {_uicsieCode = a})

instance
  FromXML
    UnsuccessfulInstanceCreditSpecificationItemError
  where
  parseXML x =
    UnsuccessfulInstanceCreditSpecificationItemError'
      <$> (x .@? "message") <*> (x .@? "code")

instance
  Hashable
    UnsuccessfulInstanceCreditSpecificationItemError

instance
  NFData
    UnsuccessfulInstanceCreditSpecificationItemError
