{-# LANGUAGE DefaultSignatures          #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE ExtendedDefaultRules       #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE PackageImports             #-}

{-# OPTIONS_GHC -fno-warn-type-defaults #-}

-- |
-- Module      : Network.AWS.Data.Body
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Data.Body (ToBody(..), ToHashedBody(..)) where

import           Data.ByteString.Builder      (Builder)
import qualified Data.ByteString.Lazy         as LBS
import qualified Data.ByteString.Lazy.Char8   as LBS8
import           Data.String
import           Data.Text                    (Text)
import qualified Data.Text.Encoding           as Text
import qualified Data.Text.Lazy               as LText
import qualified Data.Text.Lazy.Encoding      as LText
import           Network.AWS.Data.ByteString  (ByteString, toBS)

default (Builder)

-- | A streaming, exception safe response body.
data RsBody = RsBody

instance Show RsBody where
    show = const "RsBody { ConduitM () ByteString (ResourceT IO) () }"

-- | An opaque request body which will be transmitted via
-- @Transfer-Encoding: chunked@.
--
-- /Invariant:/ Only services that support chunked encoding can
-- accept a 'ChunkedBody'. (Currently S3.) This is enforced by the type
-- signatures emitted by the generator.
data ChunkedBody = ChunkedBody

-- Maybe revert to using Source's, and then enforce the chunk size
-- during conversion from HashedBody -> ChunkedBody

instance Show ChunkedBody where
    show = undefined

-- | An opaque request body containing a 'SHA256' hash.
data HashedBody = HashedBody

instance IsString HashedBody where
    fromString = toHashed

-- | Invariant: only services that support _both_ standard and
-- chunked signing expose 'RqBody' as a parameter.
data RqBody = RqBody
      deriving (Show)

instance IsString RqBody where
    fromString = undefined

-- | Anything that can be safely converted to a 'HashedBody'.
class ToHashedBody a where
    -- | Convert a value to a hashed request body.
    toHashed :: a -> HashedBody

instance ToHashedBody ByteString where
    toHashed = undefined

instance ToHashedBody HashedBody     where toHashed = id
instance ToHashedBody String         where toHashed = toHashed . LBS8.pack
instance ToHashedBody LBS.ByteString where toHashed = toHashed . toBS
instance ToHashedBody Text           where toHashed = toHashed . Text.encodeUtf8
instance ToHashedBody LText.Text     where toHashed = toHashed . LText.encodeUtf8

-- | Anything that can be converted to a streaming request 'Body'.
class ToBody a where
    -- | Convert a value to a request body.
    toBody :: a -> RqBody

    default toBody :: ToHashedBody a => a -> RqBody
    toBody = undefined

instance ToBody RqBody      where toBody = id
instance ToBody HashedBody  where toBody = undefined
instance ToBody ChunkedBody where toBody = undefined

instance ToHashedBody a => ToBody (Maybe a) where
    toBody = undefined

instance ToBody String
instance ToBody LBS.ByteString
instance ToBody ByteString
instance ToBody Text
instance ToBody LText.Text
