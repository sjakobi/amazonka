{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.DefaultCacheBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.DefaultCacheBehavior where

import Network.AWS.CloudFront.Types.AllowedMethods
import Network.AWS.CloudFront.Types.ForwardedValues
import Network.AWS.CloudFront.Types.LambdaFunctionAssociations
import Network.AWS.CloudFront.Types.TrustedKeyGroups
import Network.AWS.CloudFront.Types.TrustedSigners
import Network.AWS.CloudFront.Types.ViewerProtocolPolicy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A complex type that describes the default cache behavior if you don’t specify a @CacheBehavior@ element or if request URLs don’t match any of the values of @PathPattern@ in @CacheBehavior@ elements. You must create exactly one default cache behavior.
--
--
--
-- /See:/ 'defaultCacheBehavior' smart constructor.
data DefaultCacheBehavior = DefaultCacheBehavior'
  { _dcbLambdaFunctionAssociations ::
      !( Maybe
           LambdaFunctionAssociations
       ),
    _dcbAllowedMethods ::
      !(Maybe AllowedMethods),
    _dcbCachePolicyId ::
      !(Maybe Text),
    _dcbSmoothStreaming ::
      !(Maybe Bool),
    _dcbFieldLevelEncryptionId ::
      !(Maybe Text),
    _dcbOriginRequestPolicyId ::
      !(Maybe Text),
    _dcbMaxTTL ::
      !(Maybe Integer),
    _dcbForwardedValues ::
      !(Maybe ForwardedValues),
    _dcbDefaultTTL ::
      !(Maybe Integer),
    _dcbRealtimeLogConfigARN ::
      !(Maybe Text),
    _dcbMinTTL ::
      !(Maybe Integer),
    _dcbCompress :: !(Maybe Bool),
    _dcbTrustedKeyGroups ::
      !(Maybe TrustedKeyGroups),
    _dcbTrustedSigners ::
      !(Maybe TrustedSigners),
    _dcbTargetOriginId :: !Text,
    _dcbViewerProtocolPolicy ::
      !ViewerProtocolPolicy
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DefaultCacheBehavior' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbLambdaFunctionAssociations' - A complex type that contains zero or more Lambda function associations for a cache behavior.
--
-- * 'dcbAllowedMethods' - Undocumented member.
--
-- * 'dcbCachePolicyId' - The unique identifier of the cache policy that is attached to the default cache behavior. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy Creating cache policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html Using the managed cache policies> in the /Amazon CloudFront Developer Guide/ .
--
-- * 'dcbSmoothStreaming' - Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify @true@ ; if not, specify @false@ . If you specify @true@ for @SmoothStreaming@ , you can still distribute other content using this cache behavior if the content matches the value of @PathPattern@ .
--
-- * 'dcbFieldLevelEncryptionId' - The value of @ID@ for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for the default cache behavior.
--
-- * 'dcbOriginRequestPolicyId' - The unique identifier of the origin request policy that is attached to the default cache behavior. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy Creating origin request policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html Using the managed origin request policies> in the /Amazon CloudFront Developer Guide/ .
--
-- * 'dcbMaxTTL' - This field is deprecated. We recommend that you use the @MaxTTL@ field in a cache policy instead of this field. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy Creating cache policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html Using the managed cache policies> in the /Amazon CloudFront Developer Guide/ . The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as @Cache-Control max-age@ , @Cache-Control s-maxage@ , and @Expires@ to objects. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ .
--
-- * 'dcbForwardedValues' - This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html Working with policies> in the /Amazon CloudFront Developer Guide/ . If you want to include values in the cache key, use a cache policy. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy Creating cache policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html Using the managed cache policies> in the /Amazon CloudFront Developer Guide/ . If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy Creating origin request policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html Using the managed origin request policies> in the /Amazon CloudFront Developer Guide/ . A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.
--
-- * 'dcbDefaultTTL' - This field is deprecated. We recommend that you use the @DefaultTTL@ field in a cache policy instead of this field. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy Creating cache policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html Using the managed cache policies> in the /Amazon CloudFront Developer Guide/ . The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as @Cache-Control max-age@ , @Cache-Control s-maxage@ , and @Expires@ to objects. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ .
--
-- * 'dcbRealtimeLogConfigARN' - The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this cache behavior. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html Real-time logs> in the /Amazon CloudFront Developer Guide/ .
--
-- * 'dcbMinTTL' - This field is deprecated. We recommend that you use the @MinTTL@ field in a cache policy instead of this field. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy Creating cache policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html Using the managed cache policies> in the /Amazon CloudFront Developer Guide/ . The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ . You must specify @0@ for @MinTTL@ if you configure CloudFront to forward all headers to your origin (under @Headers@ , if you specify @1@ for @Quantity@ and @*@ for @Name@ ).
--
-- * 'dcbCompress' - Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify @true@ ; if not, specify @false@ . For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html Serving Compressed Files> in the /Amazon CloudFront Developer Guide/ .
--
-- * 'dcbTrustedKeyGroups' - A list of key groups that CloudFront can use to validate signed URLs or signed cookies. When a cache behavior contains trusted key groups, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with a private key whose corresponding public key is in the key group. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving private content> in the /Amazon CloudFront Developer Guide/ .
--
-- * 'dcbTrustedSigners' - /Important:/ We recommend using @TrustedKeyGroups@ instead of @TrustedSigners@ . A list of AWS account IDs whose public keys CloudFront can use to validate signed URLs or signed cookies. When a cache behavior contains trusted signers, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with the private key of a CloudFront key pair in a trusted signer’s AWS account. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving private content> in the /Amazon CloudFront Developer Guide/ .
--
-- * 'dcbTargetOriginId' - The value of @ID@ for the origin that you want CloudFront to route requests to when they use the default cache behavior.
--
-- * 'dcbViewerProtocolPolicy' - The protocol that viewers can use to access the files in the origin specified by @TargetOriginId@ when a request matches the path pattern in @PathPattern@ . You can specify the following options:     * @allow-all@ : Viewers can use HTTP or HTTPS.     * @redirect-to-https@ : If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.     * @https-only@ : If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden). For more information about requiring the HTTPS protocol, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html Requiring HTTPS Between Viewers and CloudFront> in the /Amazon CloudFront Developer Guide/ .
defaultCacheBehavior ::
  -- | 'dcbTargetOriginId'
  Text ->
  -- | 'dcbViewerProtocolPolicy'
  ViewerProtocolPolicy ->
  DefaultCacheBehavior
defaultCacheBehavior
  pTargetOriginId_
  pViewerProtocolPolicy_ =
    DefaultCacheBehavior'
      { _dcbLambdaFunctionAssociations =
          Nothing,
        _dcbAllowedMethods = Nothing,
        _dcbCachePolicyId = Nothing,
        _dcbSmoothStreaming = Nothing,
        _dcbFieldLevelEncryptionId = Nothing,
        _dcbOriginRequestPolicyId = Nothing,
        _dcbMaxTTL = Nothing,
        _dcbForwardedValues = Nothing,
        _dcbDefaultTTL = Nothing,
        _dcbRealtimeLogConfigARN = Nothing,
        _dcbMinTTL = Nothing,
        _dcbCompress = Nothing,
        _dcbTrustedKeyGroups = Nothing,
        _dcbTrustedSigners = Nothing,
        _dcbTargetOriginId = pTargetOriginId_,
        _dcbViewerProtocolPolicy = pViewerProtocolPolicy_
      }

-- | A complex type that contains zero or more Lambda function associations for a cache behavior.
dcbLambdaFunctionAssociations :: Lens' DefaultCacheBehavior (Maybe LambdaFunctionAssociations)
dcbLambdaFunctionAssociations = lens _dcbLambdaFunctionAssociations (\s a -> s {_dcbLambdaFunctionAssociations = a})

-- | Undocumented member.
dcbAllowedMethods :: Lens' DefaultCacheBehavior (Maybe AllowedMethods)
dcbAllowedMethods = lens _dcbAllowedMethods (\s a -> s {_dcbAllowedMethods = a})

-- | The unique identifier of the cache policy that is attached to the default cache behavior. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy Creating cache policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html Using the managed cache policies> in the /Amazon CloudFront Developer Guide/ .
dcbCachePolicyId :: Lens' DefaultCacheBehavior (Maybe Text)
dcbCachePolicyId = lens _dcbCachePolicyId (\s a -> s {_dcbCachePolicyId = a})

-- | Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify @true@ ; if not, specify @false@ . If you specify @true@ for @SmoothStreaming@ , you can still distribute other content using this cache behavior if the content matches the value of @PathPattern@ .
dcbSmoothStreaming :: Lens' DefaultCacheBehavior (Maybe Bool)
dcbSmoothStreaming = lens _dcbSmoothStreaming (\s a -> s {_dcbSmoothStreaming = a})

-- | The value of @ID@ for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for the default cache behavior.
dcbFieldLevelEncryptionId :: Lens' DefaultCacheBehavior (Maybe Text)
dcbFieldLevelEncryptionId = lens _dcbFieldLevelEncryptionId (\s a -> s {_dcbFieldLevelEncryptionId = a})

-- | The unique identifier of the origin request policy that is attached to the default cache behavior. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy Creating origin request policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html Using the managed origin request policies> in the /Amazon CloudFront Developer Guide/ .
dcbOriginRequestPolicyId :: Lens' DefaultCacheBehavior (Maybe Text)
dcbOriginRequestPolicyId = lens _dcbOriginRequestPolicyId (\s a -> s {_dcbOriginRequestPolicyId = a})

-- | This field is deprecated. We recommend that you use the @MaxTTL@ field in a cache policy instead of this field. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy Creating cache policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html Using the managed cache policies> in the /Amazon CloudFront Developer Guide/ . The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as @Cache-Control max-age@ , @Cache-Control s-maxage@ , and @Expires@ to objects. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ .
dcbMaxTTL :: Lens' DefaultCacheBehavior (Maybe Integer)
dcbMaxTTL = lens _dcbMaxTTL (\s a -> s {_dcbMaxTTL = a})

-- | This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html Working with policies> in the /Amazon CloudFront Developer Guide/ . If you want to include values in the cache key, use a cache policy. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy Creating cache policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html Using the managed cache policies> in the /Amazon CloudFront Developer Guide/ . If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy Creating origin request policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html Using the managed origin request policies> in the /Amazon CloudFront Developer Guide/ . A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.
dcbForwardedValues :: Lens' DefaultCacheBehavior (Maybe ForwardedValues)
dcbForwardedValues = lens _dcbForwardedValues (\s a -> s {_dcbForwardedValues = a})

-- | This field is deprecated. We recommend that you use the @DefaultTTL@ field in a cache policy instead of this field. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy Creating cache policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html Using the managed cache policies> in the /Amazon CloudFront Developer Guide/ . The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as @Cache-Control max-age@ , @Cache-Control s-maxage@ , and @Expires@ to objects. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ .
dcbDefaultTTL :: Lens' DefaultCacheBehavior (Maybe Integer)
dcbDefaultTTL = lens _dcbDefaultTTL (\s a -> s {_dcbDefaultTTL = a})

-- | The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this cache behavior. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html Real-time logs> in the /Amazon CloudFront Developer Guide/ .
dcbRealtimeLogConfigARN :: Lens' DefaultCacheBehavior (Maybe Text)
dcbRealtimeLogConfigARN = lens _dcbRealtimeLogConfigARN (\s a -> s {_dcbRealtimeLogConfigARN = a})

-- | This field is deprecated. We recommend that you use the @MinTTL@ field in a cache policy instead of this field. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy Creating cache policies> or <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html Using the managed cache policies> in the /Amazon CloudFront Developer Guide/ . The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ . You must specify @0@ for @MinTTL@ if you configure CloudFront to forward all headers to your origin (under @Headers@ , if you specify @1@ for @Quantity@ and @*@ for @Name@ ).
dcbMinTTL :: Lens' DefaultCacheBehavior (Maybe Integer)
dcbMinTTL = lens _dcbMinTTL (\s a -> s {_dcbMinTTL = a})

-- | Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify @true@ ; if not, specify @false@ . For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html Serving Compressed Files> in the /Amazon CloudFront Developer Guide/ .
dcbCompress :: Lens' DefaultCacheBehavior (Maybe Bool)
dcbCompress = lens _dcbCompress (\s a -> s {_dcbCompress = a})

-- | A list of key groups that CloudFront can use to validate signed URLs or signed cookies. When a cache behavior contains trusted key groups, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with a private key whose corresponding public key is in the key group. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving private content> in the /Amazon CloudFront Developer Guide/ .
dcbTrustedKeyGroups :: Lens' DefaultCacheBehavior (Maybe TrustedKeyGroups)
dcbTrustedKeyGroups = lens _dcbTrustedKeyGroups (\s a -> s {_dcbTrustedKeyGroups = a})

-- | /Important:/ We recommend using @TrustedKeyGroups@ instead of @TrustedSigners@ . A list of AWS account IDs whose public keys CloudFront can use to validate signed URLs or signed cookies. When a cache behavior contains trusted signers, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with the private key of a CloudFront key pair in a trusted signer’s AWS account. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving private content> in the /Amazon CloudFront Developer Guide/ .
dcbTrustedSigners :: Lens' DefaultCacheBehavior (Maybe TrustedSigners)
dcbTrustedSigners = lens _dcbTrustedSigners (\s a -> s {_dcbTrustedSigners = a})

-- | The value of @ID@ for the origin that you want CloudFront to route requests to when they use the default cache behavior.
dcbTargetOriginId :: Lens' DefaultCacheBehavior Text
dcbTargetOriginId = lens _dcbTargetOriginId (\s a -> s {_dcbTargetOriginId = a})

-- | The protocol that viewers can use to access the files in the origin specified by @TargetOriginId@ when a request matches the path pattern in @PathPattern@ . You can specify the following options:     * @allow-all@ : Viewers can use HTTP or HTTPS.     * @redirect-to-https@ : If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.     * @https-only@ : If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden). For more information about requiring the HTTPS protocol, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html Requiring HTTPS Between Viewers and CloudFront> in the /Amazon CloudFront Developer Guide/ .
dcbViewerProtocolPolicy :: Lens' DefaultCacheBehavior ViewerProtocolPolicy
dcbViewerProtocolPolicy = lens _dcbViewerProtocolPolicy (\s a -> s {_dcbViewerProtocolPolicy = a})

instance FromXML DefaultCacheBehavior where
  parseXML x =
    DefaultCacheBehavior'
      <$> (x .@? "LambdaFunctionAssociations")
      <*> (x .@? "AllowedMethods")
      <*> (x .@? "CachePolicyId")
      <*> (x .@? "SmoothStreaming")
      <*> (x .@? "FieldLevelEncryptionId")
      <*> (x .@? "OriginRequestPolicyId")
      <*> (x .@? "MaxTTL")
      <*> (x .@? "ForwardedValues")
      <*> (x .@? "DefaultTTL")
      <*> (x .@? "RealtimeLogConfigArn")
      <*> (x .@? "MinTTL")
      <*> (x .@? "Compress")
      <*> (x .@? "TrustedKeyGroups")
      <*> (x .@? "TrustedSigners")
      <*> (x .@ "TargetOriginId")
      <*> (x .@ "ViewerProtocolPolicy")

instance Hashable DefaultCacheBehavior

instance NFData DefaultCacheBehavior

instance ToXML DefaultCacheBehavior where
  toXML DefaultCacheBehavior' {..} =
    mconcat
      [ "LambdaFunctionAssociations"
          @= _dcbLambdaFunctionAssociations,
        "AllowedMethods" @= _dcbAllowedMethods,
        "CachePolicyId" @= _dcbCachePolicyId,
        "SmoothStreaming" @= _dcbSmoothStreaming,
        "FieldLevelEncryptionId"
          @= _dcbFieldLevelEncryptionId,
        "OriginRequestPolicyId" @= _dcbOriginRequestPolicyId,
        "MaxTTL" @= _dcbMaxTTL,
        "ForwardedValues" @= _dcbForwardedValues,
        "DefaultTTL" @= _dcbDefaultTTL,
        "RealtimeLogConfigArn" @= _dcbRealtimeLogConfigARN,
        "MinTTL" @= _dcbMinTTL,
        "Compress" @= _dcbCompress,
        "TrustedKeyGroups" @= _dcbTrustedKeyGroups,
        "TrustedSigners" @= _dcbTrustedSigners,
        "TargetOriginId" @= _dcbTargetOriginId,
        "ViewerProtocolPolicy" @= _dcbViewerProtocolPolicy
      ]
