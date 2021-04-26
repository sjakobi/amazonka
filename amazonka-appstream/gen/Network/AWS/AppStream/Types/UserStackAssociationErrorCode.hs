{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.UserStackAssociationErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.UserStackAssociationErrorCode
  ( UserStackAssociationErrorCode
      ( ..,
        UserStackAssociationErrorCodeDIRECTORYNOTFOUND,
        UserStackAssociationErrorCodeINTERNALERROR,
        UserStackAssociationErrorCodeSTACKNOTFOUND,
        UserStackAssociationErrorCodeUSERNAMENOTFOUND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserStackAssociationErrorCode = UserStackAssociationErrorCode'
  { fromUserStackAssociationErrorCode ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern UserStackAssociationErrorCodeDIRECTORYNOTFOUND :: UserStackAssociationErrorCode
pattern UserStackAssociationErrorCodeDIRECTORYNOTFOUND = UserStackAssociationErrorCode' "DIRECTORY_NOT_FOUND"

pattern UserStackAssociationErrorCodeINTERNALERROR :: UserStackAssociationErrorCode
pattern UserStackAssociationErrorCodeINTERNALERROR = UserStackAssociationErrorCode' "INTERNAL_ERROR"

pattern UserStackAssociationErrorCodeSTACKNOTFOUND :: UserStackAssociationErrorCode
pattern UserStackAssociationErrorCodeSTACKNOTFOUND = UserStackAssociationErrorCode' "STACK_NOT_FOUND"

pattern UserStackAssociationErrorCodeUSERNAMENOTFOUND :: UserStackAssociationErrorCode
pattern UserStackAssociationErrorCodeUSERNAMENOTFOUND = UserStackAssociationErrorCode' "USER_NAME_NOT_FOUND"

{-# COMPLETE
  UserStackAssociationErrorCodeDIRECTORYNOTFOUND,
  UserStackAssociationErrorCodeINTERNALERROR,
  UserStackAssociationErrorCodeSTACKNOTFOUND,
  UserStackAssociationErrorCodeUSERNAMENOTFOUND,
  UserStackAssociationErrorCode'
  #-}

instance Prelude.FromText UserStackAssociationErrorCode where
  parser = UserStackAssociationErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserStackAssociationErrorCode where
  toText (UserStackAssociationErrorCode' x) = x

instance Prelude.Hashable UserStackAssociationErrorCode

instance Prelude.NFData UserStackAssociationErrorCode

instance Prelude.ToByteString UserStackAssociationErrorCode

instance Prelude.ToQuery UserStackAssociationErrorCode

instance Prelude.ToHeader UserStackAssociationErrorCode

instance Prelude.FromJSON UserStackAssociationErrorCode where
  parseJSON = Prelude.parseJSONText "UserStackAssociationErrorCode"
