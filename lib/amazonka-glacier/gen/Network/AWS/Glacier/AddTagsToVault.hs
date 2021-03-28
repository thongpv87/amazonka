{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.AddTagsToVault
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation adds the specified tags to a vault. Each tag is composed of a key and a value. Each vault can have up to 10 tags. If your request would cause the tag limit for the vault to be exceeded, the operation throws the @LimitExceededException@ error. If a tag already exists on the vault under a specified key, the existing key value will be overwritten. For more information about tags, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html Tagging Amazon S3 Glacier Resources> . 
module Network.AWS.Glacier.AddTagsToVault
    (
    -- * Creating a request
      AddTagsToVault (..)
    , mkAddTagsToVault
    -- ** Request lenses
    , attvAccountId
    , attvVaultName
    , attvTags

    -- * Destructuring the response
    , AddTagsToVaultResponse (..)
    , mkAddTagsToVaultResponse
    ) where

import qualified Network.AWS.Glacier.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input values for @AddTagsToVault@ .
--
-- /See:/ 'mkAddTagsToVault' smart constructor.
data AddTagsToVault = AddTagsToVault'
  { accountId :: Core.Text
    -- ^ The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
  , vaultName :: Core.Text
    -- ^ The name of the vault.
  , tags :: Core.Maybe (Core.HashMap Types.TagKey Types.TagValue)
    -- ^ The tags to add to the vault. Each tag is composed of a key and a value. The value can be an empty string.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AddTagsToVault' value with any optional fields omitted.
mkAddTagsToVault
    :: Core.Text -- ^ 'accountId'
    -> Core.Text -- ^ 'vaultName'
    -> AddTagsToVault
mkAddTagsToVault accountId vaultName
  = AddTagsToVault'{accountId, vaultName, tags = Core.Nothing}

-- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
--
-- /Note:/ Consider using 'accountId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
attvAccountId :: Lens.Lens' AddTagsToVault Core.Text
attvAccountId = Lens.field @"accountId"
{-# INLINEABLE attvAccountId #-}
{-# DEPRECATED accountId "Use generic-lens or generic-optics with 'accountId' instead"  #-}

-- | The name of the vault.
--
-- /Note:/ Consider using 'vaultName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
attvVaultName :: Lens.Lens' AddTagsToVault Core.Text
attvVaultName = Lens.field @"vaultName"
{-# INLINEABLE attvVaultName #-}
{-# DEPRECATED vaultName "Use generic-lens or generic-optics with 'vaultName' instead"  #-}

-- | The tags to add to the vault. Each tag is composed of a key and a value. The value can be an empty string.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
attvTags :: Lens.Lens' AddTagsToVault (Core.Maybe (Core.HashMap Types.TagKey Types.TagValue))
attvTags = Lens.field @"tags"
{-# INLINEABLE attvTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

instance Core.ToQuery AddTagsToVault where
        toQuery AddTagsToVault{..}
          = Core.toQueryPair "operation=add" ("" :: Core.Text)

instance Core.ToHeaders AddTagsToVault where
        toHeaders _ = Core.pure Core.mempty

instance Core.FromJSON AddTagsToVault where
        toJSON AddTagsToVault{..}
          = Core.object (Core.catMaybes [("Tags" Core..=) Core.<$> tags])

instance Core.AWSRequest AddTagsToVault where
        type Rs AddTagsToVault = AddTagsToVaultResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST,
                         Core._rqPath =
                           "/" Core.<> Core.toText accountId Core.<> "/vaults/" Core.<>
                             Core.toText vaultName
                             Core.<> "/tags",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse = Response.receiveNull AddTagsToVaultResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkAddTagsToVaultResponse' smart constructor.
data AddTagsToVaultResponse = AddTagsToVaultResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AddTagsToVaultResponse' value with any optional fields omitted.
mkAddTagsToVaultResponse
    :: AddTagsToVaultResponse
mkAddTagsToVaultResponse = AddTagsToVaultResponse'
