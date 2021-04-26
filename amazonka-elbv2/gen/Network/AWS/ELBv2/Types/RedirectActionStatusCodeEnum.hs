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
-- Module      : Network.AWS.ELBv2.Types.RedirectActionStatusCodeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.RedirectActionStatusCodeEnum
  ( RedirectActionStatusCodeEnum
      ( ..,
        RedirectActionStatusCodeEnumHTTP301,
        RedirectActionStatusCodeEnumHTTP302
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RedirectActionStatusCodeEnum = RedirectActionStatusCodeEnum'
  { fromRedirectActionStatusCodeEnum ::
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

pattern RedirectActionStatusCodeEnumHTTP301 :: RedirectActionStatusCodeEnum
pattern RedirectActionStatusCodeEnumHTTP301 = RedirectActionStatusCodeEnum' "HTTP_301"

pattern RedirectActionStatusCodeEnumHTTP302 :: RedirectActionStatusCodeEnum
pattern RedirectActionStatusCodeEnumHTTP302 = RedirectActionStatusCodeEnum' "HTTP_302"

{-# COMPLETE
  RedirectActionStatusCodeEnumHTTP301,
  RedirectActionStatusCodeEnumHTTP302,
  RedirectActionStatusCodeEnum'
  #-}

instance Prelude.FromText RedirectActionStatusCodeEnum where
  parser = RedirectActionStatusCodeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText RedirectActionStatusCodeEnum where
  toText (RedirectActionStatusCodeEnum' x) = x

instance Prelude.Hashable RedirectActionStatusCodeEnum

instance Prelude.NFData RedirectActionStatusCodeEnum

instance Prelude.ToByteString RedirectActionStatusCodeEnum

instance Prelude.ToQuery RedirectActionStatusCodeEnum

instance Prelude.ToHeader RedirectActionStatusCodeEnum

instance Prelude.FromXML RedirectActionStatusCodeEnum where
  parseXML = Prelude.parseXMLText "RedirectActionStatusCodeEnum"
