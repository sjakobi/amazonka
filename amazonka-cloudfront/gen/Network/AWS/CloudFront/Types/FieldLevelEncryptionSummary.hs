{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.FieldLevelEncryptionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.FieldLevelEncryptionSummary where

import Network.AWS.CloudFront.Types.ContentTypeProfileConfig
import Network.AWS.CloudFront.Types.QueryArgProfileConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A summary of a field-level encryption item.
--
--
--
-- /See:/ 'fieldLevelEncryptionSummary' smart constructor.
data FieldLevelEncryptionSummary = FieldLevelEncryptionSummary'
  { _flesComment ::
      !(Maybe Text),
    _flesContentTypeProfileConfig ::
      !( Maybe
           ContentTypeProfileConfig
       ),
    _flesQueryArgProfileConfig ::
      !( Maybe
           QueryArgProfileConfig
       ),
    _flesId ::
      !Text,
    _flesLastModifiedTime ::
      !ISO8601
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'FieldLevelEncryptionSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flesComment' - An optional comment about the field-level encryption item.
--
-- * 'flesContentTypeProfileConfig' - A summary of a content type-profile mapping.
--
-- * 'flesQueryArgProfileConfig' - A summary of a query argument-profile mapping.
--
-- * 'flesId' - The unique ID of a field-level encryption item.
--
-- * 'flesLastModifiedTime' - The last time that the summary of field-level encryption items was modified.
fieldLevelEncryptionSummary ::
  -- | 'flesId'
  Text ->
  -- | 'flesLastModifiedTime'
  UTCTime ->
  FieldLevelEncryptionSummary
fieldLevelEncryptionSummary pId_ pLastModifiedTime_ =
  FieldLevelEncryptionSummary'
    { _flesComment =
        Nothing,
      _flesContentTypeProfileConfig = Nothing,
      _flesQueryArgProfileConfig = Nothing,
      _flesId = pId_,
      _flesLastModifiedTime =
        _Time # pLastModifiedTime_
    }

-- | An optional comment about the field-level encryption item.
flesComment :: Lens' FieldLevelEncryptionSummary (Maybe Text)
flesComment = lens _flesComment (\s a -> s {_flesComment = a})

-- | A summary of a content type-profile mapping.
flesContentTypeProfileConfig :: Lens' FieldLevelEncryptionSummary (Maybe ContentTypeProfileConfig)
flesContentTypeProfileConfig = lens _flesContentTypeProfileConfig (\s a -> s {_flesContentTypeProfileConfig = a})

-- | A summary of a query argument-profile mapping.
flesQueryArgProfileConfig :: Lens' FieldLevelEncryptionSummary (Maybe QueryArgProfileConfig)
flesQueryArgProfileConfig = lens _flesQueryArgProfileConfig (\s a -> s {_flesQueryArgProfileConfig = a})

-- | The unique ID of a field-level encryption item.
flesId :: Lens' FieldLevelEncryptionSummary Text
flesId = lens _flesId (\s a -> s {_flesId = a})

-- | The last time that the summary of field-level encryption items was modified.
flesLastModifiedTime :: Lens' FieldLevelEncryptionSummary UTCTime
flesLastModifiedTime = lens _flesLastModifiedTime (\s a -> s {_flesLastModifiedTime = a}) . _Time

instance FromXML FieldLevelEncryptionSummary where
  parseXML x =
    FieldLevelEncryptionSummary'
      <$> (x .@? "Comment")
      <*> (x .@? "ContentTypeProfileConfig")
      <*> (x .@? "QueryArgProfileConfig")
      <*> (x .@ "Id")
      <*> (x .@ "LastModifiedTime")

instance Hashable FieldLevelEncryptionSummary

instance NFData FieldLevelEncryptionSummary
