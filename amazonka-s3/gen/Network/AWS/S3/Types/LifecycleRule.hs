{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.LifecycleRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.LifecycleRule where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.AbortIncompleteMultipartUpload
import Network.AWS.S3.Types.ExpirationStatus
import Network.AWS.S3.Types.LifecycleExpiration
import Network.AWS.S3.Types.LifecycleRuleFilter
import Network.AWS.S3.Types.NoncurrentVersionExpiration
import Network.AWS.S3.Types.NoncurrentVersionTransition
import Network.AWS.S3.Types.Transition

-- | A lifecycle rule for individual objects in an Amazon S3 bucket.
--
--
--
-- /See:/ 'lifecycleRule' smart constructor.
data LifecycleRule = LifecycleRule'
  { _lrExpiration ::
      !(Maybe LifecycleExpiration),
    _lrPrefix :: !(Maybe Text),
    _lrNoncurrentVersionTransitions ::
      !(Maybe [NoncurrentVersionTransition]),
    _lrId :: !(Maybe Text),
    _lrNoncurrentVersionExpiration ::
      !(Maybe NoncurrentVersionExpiration),
    _lrTransitions :: !(Maybe [Transition]),
    _lrAbortIncompleteMultipartUpload ::
      !(Maybe AbortIncompleteMultipartUpload),
    _lrFilter :: !(Maybe LifecycleRuleFilter),
    _lrStatus :: !ExpirationStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LifecycleRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrExpiration' - Specifies the expiration for the lifecycle of the object in the form of date, days and, whether the object has a delete marker.
--
-- * 'lrPrefix' - Prefix identifying one or more objects to which the rule applies. This is No longer used; use @Filter@ instead. /Important:/ Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints XML related object key constraints> .
--
-- * 'lrNoncurrentVersionTransitions' - Specifies the transition rule for the lifecycle rule that describes when noncurrent objects transition to a specific storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to a specific storage class at a set period in the object's lifetime.
--
-- * 'lrId' - Unique identifier for the rule. The value cannot be longer than 255 characters.
--
-- * 'lrNoncurrentVersionExpiration' - Undocumented member.
--
-- * 'lrTransitions' - Specifies when an Amazon S3 object transitions to a specified storage class.
--
-- * 'lrAbortIncompleteMultipartUpload' - Undocumented member.
--
-- * 'lrFilter' - Undocumented member.
--
-- * 'lrStatus' - If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being applied.
lifecycleRule ::
  -- | 'lrStatus'
  ExpirationStatus ->
  LifecycleRule
lifecycleRule pStatus_ =
  LifecycleRule'
    { _lrExpiration = Nothing,
      _lrPrefix = Nothing,
      _lrNoncurrentVersionTransitions = Nothing,
      _lrId = Nothing,
      _lrNoncurrentVersionExpiration = Nothing,
      _lrTransitions = Nothing,
      _lrAbortIncompleteMultipartUpload = Nothing,
      _lrFilter = Nothing,
      _lrStatus = pStatus_
    }

-- | Specifies the expiration for the lifecycle of the object in the form of date, days and, whether the object has a delete marker.
lrExpiration :: Lens' LifecycleRule (Maybe LifecycleExpiration)
lrExpiration = lens _lrExpiration (\s a -> s {_lrExpiration = a})

-- | Prefix identifying one or more objects to which the rule applies. This is No longer used; use @Filter@ instead. /Important:/ Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints XML related object key constraints> .
lrPrefix :: Lens' LifecycleRule (Maybe Text)
lrPrefix = lens _lrPrefix (\s a -> s {_lrPrefix = a})

-- | Specifies the transition rule for the lifecycle rule that describes when noncurrent objects transition to a specific storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to a specific storage class at a set period in the object's lifetime.
lrNoncurrentVersionTransitions :: Lens' LifecycleRule [NoncurrentVersionTransition]
lrNoncurrentVersionTransitions = lens _lrNoncurrentVersionTransitions (\s a -> s {_lrNoncurrentVersionTransitions = a}) . _Default . _Coerce

-- | Unique identifier for the rule. The value cannot be longer than 255 characters.
lrId :: Lens' LifecycleRule (Maybe Text)
lrId = lens _lrId (\s a -> s {_lrId = a})

-- | Undocumented member.
lrNoncurrentVersionExpiration :: Lens' LifecycleRule (Maybe NoncurrentVersionExpiration)
lrNoncurrentVersionExpiration = lens _lrNoncurrentVersionExpiration (\s a -> s {_lrNoncurrentVersionExpiration = a})

-- | Specifies when an Amazon S3 object transitions to a specified storage class.
lrTransitions :: Lens' LifecycleRule [Transition]
lrTransitions = lens _lrTransitions (\s a -> s {_lrTransitions = a}) . _Default . _Coerce

-- | Undocumented member.
lrAbortIncompleteMultipartUpload :: Lens' LifecycleRule (Maybe AbortIncompleteMultipartUpload)
lrAbortIncompleteMultipartUpload = lens _lrAbortIncompleteMultipartUpload (\s a -> s {_lrAbortIncompleteMultipartUpload = a})

-- | Undocumented member.
lrFilter :: Lens' LifecycleRule (Maybe LifecycleRuleFilter)
lrFilter = lens _lrFilter (\s a -> s {_lrFilter = a})

-- | If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being applied.
lrStatus :: Lens' LifecycleRule ExpirationStatus
lrStatus = lens _lrStatus (\s a -> s {_lrStatus = a})

instance FromXML LifecycleRule where
  parseXML x =
    LifecycleRule'
      <$> (x .@? "Expiration")
      <*> (x .@? "Prefix")
      <*> (may (parseXMLList "NoncurrentVersionTransition") x)
      <*> (x .@? "ID")
      <*> (x .@? "NoncurrentVersionExpiration")
      <*> (may (parseXMLList "Transition") x)
      <*> (x .@? "AbortIncompleteMultipartUpload")
      <*> (x .@? "Filter")
      <*> (x .@ "Status")

instance Hashable LifecycleRule

instance NFData LifecycleRule

instance ToXML LifecycleRule where
  toXML LifecycleRule' {..} =
    mconcat
      [ "Expiration" @= _lrExpiration,
        "Prefix" @= _lrPrefix,
        toXML
          ( toXMLList "NoncurrentVersionTransition"
              <$> _lrNoncurrentVersionTransitions
          ),
        "ID" @= _lrId,
        "NoncurrentVersionExpiration"
          @= _lrNoncurrentVersionExpiration,
        toXML (toXMLList "Transition" <$> _lrTransitions),
        "AbortIncompleteMultipartUpload"
          @= _lrAbortIncompleteMultipartUpload,
        "Filter" @= _lrFilter,
        "Status" @= _lrStatus
      ]
