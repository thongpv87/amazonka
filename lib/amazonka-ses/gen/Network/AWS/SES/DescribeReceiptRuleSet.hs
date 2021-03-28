{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.DescribeReceiptRuleSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of the specified receipt rule set.
--
-- For information about managing receipt rule sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html Amazon SES Developer Guide> .
-- You can execute this operation no more than once per second.
module Network.AWS.SES.DescribeReceiptRuleSet
    (
    -- * Creating a request
      DescribeReceiptRuleSet (..)
    , mkDescribeReceiptRuleSet
    -- ** Request lenses
    , drrsRuleSetName

    -- * Destructuring the response
    , DescribeReceiptRuleSetResponse (..)
    , mkDescribeReceiptRuleSetResponse
    -- ** Response lenses
    , drrsrfrsMetadata
    , drrsrfrsRules
    , drrsrfrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | Represents a request to return the details of a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html Amazon SES Developer Guide> .
--
-- /See:/ 'mkDescribeReceiptRuleSet' smart constructor.
newtype DescribeReceiptRuleSet = DescribeReceiptRuleSet'
  { ruleSetName :: Types.RuleSetName
    -- ^ The name of the receipt rule set to describe.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeReceiptRuleSet' value with any optional fields omitted.
mkDescribeReceiptRuleSet
    :: Types.RuleSetName -- ^ 'ruleSetName'
    -> DescribeReceiptRuleSet
mkDescribeReceiptRuleSet ruleSetName
  = DescribeReceiptRuleSet'{ruleSetName}

-- | The name of the receipt rule set to describe.
--
-- /Note:/ Consider using 'ruleSetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drrsRuleSetName :: Lens.Lens' DescribeReceiptRuleSet Types.RuleSetName
drrsRuleSetName = Lens.field @"ruleSetName"
{-# INLINEABLE drrsRuleSetName #-}
{-# DEPRECATED ruleSetName "Use generic-lens or generic-optics with 'ruleSetName' instead"  #-}

instance Core.ToQuery DescribeReceiptRuleSet where
        toQuery DescribeReceiptRuleSet{..}
          = Core.toQueryPair "Action" ("DescribeReceiptRuleSet" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2010-12-01" :: Core.Text)
              Core.<> Core.toQueryPair "RuleSetName" ruleSetName

instance Core.ToHeaders DescribeReceiptRuleSet where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeReceiptRuleSet where
        type Rs DescribeReceiptRuleSet = DescribeReceiptRuleSetResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.mempty,
                         Core._rqHeaders =
                           Core.pure
                             ("Content-Type",
                              "application/x-www-form-urlencoded; charset=utf-8")
                             Core.<> Core.toHeaders x,
                         Core._rqBody = Core.toFormBody (Core.toQuery x)}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXMLWrapper "DescribeReceiptRuleSetResult"
              (\ s h x ->
                 DescribeReceiptRuleSetResponse' Core.<$>
                   (x Core..@? "Metadata") Core.<*>
                     x Core..@? "Rules" Core..<@> Core.parseXMLList "member"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Represents the details of the specified receipt rule set.
--
-- /See:/ 'mkDescribeReceiptRuleSetResponse' smart constructor.
data DescribeReceiptRuleSetResponse = DescribeReceiptRuleSetResponse'
  { metadata :: Core.Maybe Types.ReceiptRuleSetMetadata
    -- ^ The metadata for the receipt rule set, which consists of the rule set name and the timestamp of when the rule set was created.
  , rules :: Core.Maybe [Types.ReceiptRule]
    -- ^ A list of the receipt rules that belong to the specified receipt rule set.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeReceiptRuleSetResponse' value with any optional fields omitted.
mkDescribeReceiptRuleSetResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeReceiptRuleSetResponse
mkDescribeReceiptRuleSetResponse responseStatus
  = DescribeReceiptRuleSetResponse'{metadata = Core.Nothing,
                                    rules = Core.Nothing, responseStatus}

-- | The metadata for the receipt rule set, which consists of the rule set name and the timestamp of when the rule set was created.
--
-- /Note:/ Consider using 'metadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drrsrfrsMetadata :: Lens.Lens' DescribeReceiptRuleSetResponse (Core.Maybe Types.ReceiptRuleSetMetadata)
drrsrfrsMetadata = Lens.field @"metadata"
{-# INLINEABLE drrsrfrsMetadata #-}
{-# DEPRECATED metadata "Use generic-lens or generic-optics with 'metadata' instead"  #-}

-- | A list of the receipt rules that belong to the specified receipt rule set.
--
-- /Note:/ Consider using 'rules' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drrsrfrsRules :: Lens.Lens' DescribeReceiptRuleSetResponse (Core.Maybe [Types.ReceiptRule])
drrsrfrsRules = Lens.field @"rules"
{-# INLINEABLE drrsrfrsRules #-}
{-# DEPRECATED rules "Use generic-lens or generic-optics with 'rules' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drrsrfrsResponseStatus :: Lens.Lens' DescribeReceiptRuleSetResponse Core.Int
drrsrfrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE drrsrfrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
